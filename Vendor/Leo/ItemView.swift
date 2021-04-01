//
//  ItemView.swift
//  Vendor
//
//  Created by leo on 3/22/21.
//
//
//import SwiftUI
//
//struct ItemView: View {
//
//    let item: Item
//    @StateObject var buy = Purchase()
//    var body: some View {
//        NavigationView {
//            VStack{
//                Text(item.name)
//                    .foregroundColor(.black)
//
//                Button("buy", action: {
//                        buy.Choose(item: item) }
//                )
//
//                Text(buy.item.name)
//                    .foregroundColor(.black)
//            }
//
//        }
//    }
//}

//
//  CartView.swift
//  Food App
//
//  Created by Balaji on 28/10/20.
//

import SwiftUI

struct ItemView: View {
    let item: Item
    @StateObject var buy = Purchase()
    @Environment(\.presentationMode) var present
    var body: some View {
        
        VStack{
            
            HStack(spacing: 20){
                
                Button(action: {present.wrappedValue.dismiss()}) {
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 26, weight: .heavy))
                        .foregroundColor(Color("pink"))
                }
                
                Text("My cart")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                LazyVStack(spacing: 0){
            

                        // Cart ItemView....
                        
                        HStack(spacing: 15){
                            
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 130, height: 130)
                                .cornerRadius(15)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text(item.name)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                                Text(item.description)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                    .lineLimit(2)
                                
                                HStack(spacing: 15){
                                    
                                    Text("$" + String(item.price))
                                        .font(.title2)
                                        .fontWeight(.heavy)
                                        .foregroundColor(.black)
                                    
                                    Spacer(minLength: 0)
                                    
                                    // Add - Sub Button...
                                    
                                }
                            }
                        }
                        .padding()
                        .contentShape(RoundedRectangle(cornerRadius: 15))
                        .contextMenu{
                            
                
                        }
                    
                }
            }
            
            // Bottom View...
            
            VStack{
                
                HStack{
                    
                    Text("Total")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    // calculating Total Price...
                    Text("$" + String(item.price))
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding([.top,.horizontal])
                
                Button(action: { print("poop")}) {
                    
                    Text("Cancel Order")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(
                            Color("pink")
                        )
                        .cornerRadius(15)
                }
            }
            .background(Color.white)
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


