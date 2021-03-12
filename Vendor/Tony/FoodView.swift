//
//  ContentView.swift
//  Vendor
//  
//  Created by Rushil Mistry on 1/28/21.
//

import SwiftUI

/*struct MyButtonStyle: ButtonStyle
 {
 func makeBody(configuration: Self.Configuration) -> some View
 {
 configuration.label
 .padding()
 .foregroundColor(.white)
 .background(configuration.isPressed ?  Color.red : Color.black)
 .cornerRadius(8.0)
 }
 }
 */
struct FoodView: View
{
    var body: some View
    {
        NavigationView
        {
            
            ZStack
            {
                Color("UseBlack")
                    .edgesIgnoringSafeArea(.all)
                VStack
                {
                    
                    ZStack()
                    {
                        Rectangle()
                        Color("UseBlack")
                        
                        HStack()
                        {
                            VStack(alignment: .leading)
                            {
                                Text("UTSA Engineering")
                                Text("Food Available")
                                    
                                
                            }
                            .font(.system(size:28))
                            .foregroundColor(.white)
                            
                            
                            ZStack()//white button
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
                        
                    }
                    .frame(width:400, height: 100, alignment: .center)

                    ScrollView
                    {
                        VStack
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
                            }
                            HStack
                            { //food selection line 2
                                Button(action: { print("Red chips selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Image("chocolatebar")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Chocolate Bar")
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
                                        Image("gumpackage")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Gum")
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
                                
                                Button(action: { print("Granola bar Selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Image("granolabar")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Granola Bar")
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
                            }
                            HStack //food selection line 3
                            {
                                Button(action: { print("Red soda selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Image("redsoda")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Red Soda")
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
                                Button(action: { print("Blue soda selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Image("bluesoda")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Blue Soda")
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
                                Button(action: { print("Tea Selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Image("tea")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Tea")
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
                            }
                            HStack //food selection line 4
                            {
                                Button(action: { print("Item 10 selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Item")
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
                                Button(action: { print("Item 11 selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Item")
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
                                Button(action: { print("Item 12 Selected") } )
                                {
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 90, height: 75)
                                        Spacer()
                                        Text("Item")
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
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    Spacer()
                    ZStack
                    {
                        //Rectangle()
                           // .frame(width:500, height: 100, alignment: .center)
                           // Color("UseBlack")
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
}


struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodView()
        }
    }
}

