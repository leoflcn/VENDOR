//
//  LocationView.swift
//  Vendor
//
//  Created by turtly on 3/4/21.
//

import SwiftUI

struct LocationView: View
{
    @State private var isExpanded: Bool = false
    var body: some View
    {
        NavigationView
        {
            ZStack(alignment:.top)
            {
                Color("UseBlack")
                    .edgesIgnoringSafeArea(.all)
                VStack
                {
                    GeometryReader
                    { geo in
                        
                        Image("engineeringbuilding50")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width: geo.size.width)
                        
                    }
                        VStack (alignment: .leading)
                        {
                            HStack
                            {
                                VStack(alignment: .leading)
                                {
                                    Text("UTSA Engineering")
                                        .font(.system(size:28))
                                        .foregroundColor(.white)
                                    HStack
                                    {
                                        Text("Rating")
                                        Text("# of Reviews")
                                            .foregroundColor(Color.gray)
                                    }
                                }
                                .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                                .padding(.top, 30)
                                HStack //mapbuttons
                                {
                                    ZStack//white button
                                    {
                                        Circle()
                                            .frame(width: 60, height: 60)
                                            .foregroundColor(.orange)
                                        Button(action: {} )
                                        {
                                            HStack()
                                            {
                                            }
                                            .padding()
                                            .frame(width: 55, height: 55, alignment: .center)
                                            .background(Color.white)
                                            .cornerRadius(30)
                                        }
                                    }
                                    Button(action: { print("Return to map") } ) //red button
                                    {
                                        HStack()
                                        {
                                        }
                                        .padding()
                                        .frame(width: 60, height: 60, alignment: .center)
                                        .background(Color("UseMainRed"))
                                        .cornerRadius(30)
                                    }
                                }
                                .padding(.bottom, 40.0)
                                .padding(.leading, 20.0)
                            }
                            .frame(width: 300, height: 30, alignment: .topLeading)
                            Spacer()
                            VStack(alignment: .leading) //location information
                            {
                                Text("The mission of the College of Engineering is to provide outstanding education and research opportunities and service to our region's multicultural community, the nation and beyond.")
                                    .lineLimit(isExpanded ? nil : 2)
                                    .background(!isExpanded ? nil : Color("UseBlack"))
                                Button(action:{
                                    isExpanded.toggle()
                                }){
                                    Text(isExpanded ? "Close" : "Read more")
                                        .font(.caption).bold()
                                        .padding(.top, 4.0)
                                        .foregroundColor(Color.red)
                                }
                            }
                            .padding(.bottom,20.0)
                            
                            Text("& 1 UTSA Circle, San Antonio, TX 78249")
                                .frame(alignment: .bottomLeading)
                            Text("Food Available")
                                .font(.system(size:20))
                        }
                    
                    .foregroundColor(Color.white)
                    
                    ScrollView(.horizontal)
                    {
                        HStack //Food Selection line 1
                        {
                            Button(action: { print("Red chips selected") } )
                            {
                                
                                VStack(alignment: .leading)
                                {
                                    Image("redchips")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 75)
                                    Spacer()
                                    Text("Red Chips")
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                    Text("$2")
                                        .font(.system(size: 20))
                                        .foregroundColor(.yellow)
                                    
                                }
                                .padding()
                                .frame(width: 120, height: 150, alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(15)
                                
                            }
                            
                            Button(action: { print("Blue chips selected") } )
                            {
                                
                                VStack(alignment: .leading)
                                {
                                    Image("bluechips")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 75)
                                    Spacer()
                                    Text("Blue Chips")
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                    Text("$2")
                                        .font(.system(size: 20))
                                        .foregroundColor(.yellow)
                                    
                                }
                                .padding()
                                .frame(width: 120, height: 150, alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(15)
                            }
                            Button(action: { print("Trailmix Selected") } )
                            {
                                
                                VStack(alignment: .leading)
                                {
                                    Image("trailmix")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 75)
                                    Spacer()
                                    Text("Trailmix")
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                    Text("$3")
                                        .font(.system(size: 20))
                                        .foregroundColor(.yellow)
                                    
                                }
                                .padding()
                                .frame(width: 120, height: 150, alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(15)
                            }
                            NavigationLink(destination: FoodView())
                            {
                                
                                VStack(alignment: .leading)
                                {
                                    
                                    Text("View More...")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(width: 120, height: 150, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(15)
                            }
                        }
                    }
                    Button(action: { print("It Works") } )
                    {
                        HStack()
                        {
                            Text("Make your order!")
                                .fontWeight(.semibold)
                                .font(.title)
                        }
                        .padding()
                        .frame(width: 390, height: 55, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color("UseMainRed"))
                        .cornerRadius(40)
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
