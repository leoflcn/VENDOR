//
//  LocationView.swift
//  Vendor
//
//  Created by turtly on 3/4/21.
//
import SwiftUI

struct VendorView: View {
    @Environment(\.presentationMode) var presentation
    
    let VM: VM
    @State private var isExpanded: Bool = false
    var body: some View
    {
        ZStack(alignment:.topLeading)
        {
            Color("UseBlack")
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                GeometryReader
                { geo in
                    
                    Image(VM.name)
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
                            Text(VM.name)
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
                                    .foregroundColor(.white)
                                
                                NavigationLink(
                                    destination: WelcomeScreen()){
                                    HStack()
                                    {
                                        Image(systemName: "house")
                                            .foregroundColor(Color("UseMainRed"))
                                            .font(.system(size: 25))
                                    }
                                    .padding()
                                    .frame(width: 55, height: 55, alignment: .center)
                                    .background(Color.white)
                                    .cornerRadius(30)
                                }
                                
                                
                            }
                            
                            NavigationLink(
                                destination: VendorMap()) {
                                ZStack()
                                {
                                    Image(systemName: "map")
                                        .font(.system(size: 25))
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
                        Text(VM.description + "                       ") // There is a problem here with spacing
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
                    
                    Text(VM.address)
                        .frame(alignment: .bottomLeading)
                    Text("Food Available")
                        .font(.system(size:20))
                }
                .foregroundColor(Color.white)
                
                ScrollView(.horizontal)
                {
                    HStack //Food Selection
                    {
                        ForEach(VM.items) { item in
                            
                            NavigationLink (destination: ItemView(item: item)) {
                                // option 1 navigation link to the item
                                VStack(alignment: .leading) {
                                    
                                    Image(item.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 75)
                                    Spacer()
                                    
                                    Text(item.name)
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                    
                                    Text("$" + String(item.price))
                                        .font(.system(size: 20))
                                        .foregroundColor(.yellow)
                                    
                                }
                                .padding()
                                .frame(width: 120, height: 150, alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(15)
                            }
                        }
                    }
                }
                .navigationBarTitle("VM")
                .navigationBarHidden(true)
                Button(action: { print("hi") } ) {
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
            
            Button(action: { presentation.wrappedValue.dismiss() }) {
                HStack {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                        .imageScale(.large)
                    Text("Map")
                        .font(.title3)
                        .foregroundColor(.white)
                }
            }
            .padding(.leading)
            .padding(.top)
        }
    }
}


struct NewVendorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VendorView(VM: VM.example)
        }
        .navigationBarTitle(" ")
        .navigationBarHidden(true)
    }
}
