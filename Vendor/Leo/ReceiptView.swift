//
//  ReceiptView.swift
//  Vendor
//
//  Created by turtly on 4/19/21.
//

import SwiftUI

struct ReceiptView: View {
    @State var user = "User"
    @State var now = Date()
    @State var xcord = 0
    @State var ycord = 0
    let VM: VM
    let item: Item
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    VStack{
                        VStack{
                            //Thank you Stack
                            VStack{
                                VStack{
                                    VStack{
                                        Image("App Logo")
                                            .resizable()
                                            .frame(width:100, height:100)
                                            .offset(y:20)
                                        Text("Thank you")
                                            .font(.system(size:40, weight: .medium))
                                        Text("Your order has been placed")
                                            .font(.system(size:25))
                                    }
                                    .offset(y:-10)
                                    NavigationLink(
                                        destination: VendorMap()
                                            .navigationBarTitle("")
                                            .navigationBarHidden(true)
                                            .navigationViewStyle(StackNavigationViewStyle())){
                                        //Image(systemName: "ellipsis.circle")
                                        Text("Back to Vendor Map")
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20, weight: .heavy))
                                            .background(RoundedRectangle(cornerRadius: 50)
                                                            .fill(Color("UseBlack"))
                                                            .shadow(color: .gray, radius: 1, x:2, y:3)
                                                            .frame(width:245, height: 60)
                                            )
                                    }
                                    .padding()
                                }
                                .offset(y:0)
                                
                                
                            }
                            .offset(x:0, y:0)
                            
                            //Order Summary
                            VStack(alignment: .leading){
                                Text("Summary")
                                    .foregroundColor(Color.gray)
                                
                                HStack{
                                    Text("Order No:")
                                        .font(.system(size:15, weight: .medium))
                                    Text(String())
                                }
                                HStack{
                                    Text("Order Date:")
                                        .font(.system(size:15, weight: .medium))
                                    Text(Date(), style: .date)
                                }
                                HStack{
                                    Text("Order Total:")
                                        .font(.system(size:15, weight: .medium))
                                    Text("$\(item.price * 1.0825, specifier:"%.2f")")
                                }
                            }
                            .frame(width: 380, alignment: .leading)
                            .font(.system(size:15))
                            .offset(y:10)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width:380, height:1)
                                .offset(y:15)
                            //Purchase Information
                            HStack(alignment: .top){
                                //item
                                VStack{
                                    Text("Item Purchased")
                                        .foregroundColor(Color.gray)
                                    HStack{
                                        
                                        Image(item.name)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:75, height:75)
                                            
                                        Text(item.name)
                                            .font(.system(size:20))
                                    }
                                    .offset(x:-10)
                                    
                                }
                                Spacer()
                                //quantity
                                VStack{
                                    Text("Quantity")
                                        .foregroundColor(Color.gray)
                                    Text("\(1)")
                                        .offset(y:40)
                                        .font(.system(size:20))
                                }
                                .offset(x:-15)
                                Spacer()
                                //price
                                VStack{
                                    Text("Price")
                                        .foregroundColor(Color.gray)
                                    Text("$\(item.price * 1.0825, specifier:"%.2f")")
                                        .offset(y:40)
                                        .font(.system(size:20))
                                }
                                .offset(x:-15)
                                
                            }
                            .font(.system(size:20))
                            .frame(width: 380, alignment: .leading)
                            .offset(y:20)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width:380, height:1)
                                .offset(y:15)
                        }
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 16)
//                                                .stroke(Color.black, lineWidth: 1)
//                        )


                        
                        VStack{
                            //Maps Stack
                            VStack{
                                Text("Location: \(VM.name)")
                                    .font(.system(size:20))
                                    .offset(y:5)
                                MapView(latitude: VM.latitude, longitude: VM.longitude)
                                    .frame(width:380, height: 225, alignment: .center)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                                            .stroke(Color.gray, lineWidth: 1)
                                    )
                                Button(action: {
                                    ViewController().openMapForPlace(VM: VM)
                                }){
                                    Text("Show in Apple Maps")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20, weight: .heavy))
                                        .background(RoundedRectangle(cornerRadius: 50)
                                                        .fill(Color("UseBlack"))
                                                        .shadow(color: .gray, radius: 1, x:2, y:3)
                                                        .frame(width:245, height: 60)
                                        )
                                }
                                .offset(y:25)
                            }
                            .padding()
                            .font(.system(size:30))
                            
                        }
                        
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .offset(y:0)
                    }
                }
                .offset(y:-50)
                
            }
            //.background()
            
            .foregroundColor(Color.black)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptView(VM: VM.example, item: Item(id: 1, name: "Sprite", price: 2, description: "hji", calories: 120))
    }
}
