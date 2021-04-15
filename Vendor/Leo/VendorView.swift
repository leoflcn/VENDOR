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
    @Namespace var animation
    @State var show = false
    @State var selectedItem : Item!
    @State private var isExpanded: Bool = false
    var body: some View {
        
        //  NavigationView {
        ZStack{
            
            VStack(spacing: 0){
                
                ZStack{
                    
                    HStack(spacing: 15){
                        
                        Button(action: { presentation.wrappedValue.dismiss() }) {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(Color("UseMainRed"))
                                    .font(.title)
                            }
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "magnifyingglass")
                                .font(.title)
                                .foregroundColor(.black)
                        })
                        
                        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                            
                            Button(action: {}, label: {
                                
                                Image(systemName: "cart")
                                    .font(.title)
                                    .foregroundColor(.black)
                            })
                            
                            Circle()
                                .fill(Color("UseMainRed"))
                                .frame(width: 15, height: 15)
                                .offset(x: 5, y: -10)
                        })
                        
                    }
                    
                    Text("Shop")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding()
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack{
                        
                        HStack{
                            
                            Text(VM.name)
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom,10)
                        
                        Image(VM.name)
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                        
                        VStack(alignment: .leading) //location information
                        {
                            Text(VM.description) // There is a problem here with spacing
                                .lineLimit(isExpanded ? nil : 2)
                            Button(action:{
                                isExpanded.toggle()
                            }){
                                Text(isExpanded ? "Close" : "Read more")
                                    .font(.caption).bold()
                                    .padding(.top, 4.0)
                                    .foregroundColor(Color.red)
                            }
                        }
                        
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 15), count: 2),spacing: 15){
                            
                            ForEach(VM.items){item in
                                
                                ItemButton(item: item ,animation: animation)
                                    .onTapGesture {
                                        
                                        withAnimation(.easeIn){
                                            
                                            selectedItem = item
                                            show.toggle()
                                        }
                                    }
                            }
                        }
                        .padding()
                        .padding(.top,10)
                    }
                })
            }
            .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
            
            if selectedItem != nil && show{
                
                ItemView(item: $selectedItem, show: $show, animation: animation)
                
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct NewVendorView_Previews: PreviewProvider {
    static var previews: some View {
        
        VendorView(VM: VM.example)
        
    }
}
