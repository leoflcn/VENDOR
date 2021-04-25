//
//  ItemView.swift
//  Vendor
//
//  Created by leo on 3/22/21.

import SwiftUI

struct ItemView: View {
    let VM: VM
    @Binding var item : Item!
    @Binding var show: Bool
    var animation: Namespace.ID
    // Initialization....
    @State var selectedColor = Color.red
    
    @State var count = 0
    
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                VStack(alignment: .leading, spacing: 5){
                    
                    Button(action: {
                        
                        withAnimation(.easeOut){show.toggle()}
                        
                    }) {
                        
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.white)
                            .offset(y: 3)
                    }
                    
                    Text(VM.name)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    Text(item.name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
            }
            .padding()
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HStack(spacing: 10){
                
                VStack(alignment: .leading, spacing: 6) {
                    Spacer(minLength: 30)
                    Text("Price")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("$" + String(format: "%.2f", item.price))
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                    Spacer()
                
                Image(item.name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    // Hero Animation...
                    .matchedGeometryEffect(id: item.name, in: animation)
                    .frame(width: 250, height: 250)
            }
            .padding()
            .padding(.top,10)
            .zIndex(1)
            
            VStack{
                
                ScrollView(isSmallDevice ? .vertical : .init(), showsIndicators: false) {
                    
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Calories")
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                            
                            Text(String(item.calories))
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                            
                        }
                        
                        Spacer(minLength: 0)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Stock")
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            
                            Text(String(VM.quantities[item.id]))
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal)
                    
                    Text(item.description)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                    HStack(spacing: 20){
                        
                        Button(action: {
                            if count > 0{count -= 1}
                        }) {
                            
                            Image(systemName: "minus")
                                .font(.title2)
                                .foregroundColor(.gray)
                                .frame(width: 35, height: 35)
                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
                        }
                        
                        Text("\(count)")
                            .font(.title2)
                        
                        Button(action: {count += 1}) {
                            
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundColor(.gray)
                                .frame(width: 35, height: 35)
                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            
                            Image(systemName: "suit.heart.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color("UseMainRed"))
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                    .offset(y:-20)
                   
                    if VM.quantities[item.id] > 0 {
                    PaymentButton(VM: VM, item: item)
                    }
                    
                    else {
                        Button(action: {}) {
                            Text("Out of Stock")
                                .fontWeight(.semibold)
                                .font(.title)
                                .cornerRadius(4)
                        }
                        .frame(minWidth: 100, maxWidth: 400)
                        .frame(height: 60)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 4))
                  
                        
                    }
                    
                }
                .padding(.top,isSmallDevice ? 0 : -20)
            }
            .background(
                Color.white
                    .clipShape(CustomCorner())
                    .padding(.top,isSmallDevice ? -60 : -100)
            )
            .zIndex(0)
            
        }
        .background(Color("UseMainRed").ignoresSafeArea(.all, edges: .top))
        .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
        .onAppear {
            
            // First Color Is Image Or Bag Color...
            selectedColor = Color("UseMainRed")
        }
    }
}

