//
//  VendorView.swift
//  Vendor
//
//  Created by leo on 2/13/21.
//  Use option key to zoom on map
//  Use two images for drink or snack

import Combine
import MapKit
import SwiftUI
import Firebase

struct VendorMap: View {
    
    @ObservedObject var VModel = VMs()
    @ObservedObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D.init(latitude: 31, longitude: -100), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    @State private var cancellable: AnyCancellable?
    @State private var name = ""
    
    private func setCurrentLocation() {
        cancellable = locationManager.$location.sink { location in
            region = MKCoordinateRegion(
                center: location?.coordinate ?? CLLocationCoordinate2D(),
                span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
            )
        }
    }
    
    var body: some View {
        
        
        VStack {
            
            ZStack {
                if locationManager.location != nil {
                    Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil, annotationItems: VModel.machines) {
                        VM in
                        MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: VM.latitude, longitude: VM.longitude)) {
                            NavigationLink(destination: VendorView(VM: VM)
                                            .navigationBarTitle("")
                                            .navigationBarHidden(true)
                                            .navigationViewStyle(StackNavigationViewStyle())) {
                                Image(VM.type)
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width:60, height: 60)
                                    .shadow(radius: 3)
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    HStack{
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search for Items", text: $name)
                            .colorScheme(.light)
                    
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(Color.white)
                    NavigationLink(
                        destination: SettingsView()
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                            .navigationViewStyle(StackNavigationViewStyle())){
                        Image(systemName: "ellipsis.circle")
                            .foregroundColor(Color("UseMainRed"))
                            .font(.system(size: 25))
                            .frame(width: 55, height: 55, alignment: .center)
                            //  .background(Color.white)
                            .cornerRadius(30)
                    }
                }
                }
                .offset(y: -370)
            }
        }
//        .navigationBarTitle("Map")
//        .navigationBarHidden(true)
//        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear { setCurrentLocation() }
        .onAppear { VModel.FetchData() }
        .edgesIgnoringSafeArea(.all)
    }
}


struct VendorMap_Previews: PreviewProvider {
    static var previews: some View {
        VendorMap()
    }
}
