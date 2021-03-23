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

struct VendorMap: View {
    
    @EnvironmentObject var vms: VMs
    @ObservedObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D.init(latitude: 31, longitude: -100), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    @State private var cancellable: AnyCancellable?
    
    private func setCurrentLocation() {
        cancellable = locationManager.$location.sink { location in
            region = MKCoordinateRegion(
                center: location?.coordinate ?? CLLocationCoordinate2D(),
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
    }
    
    var body: some View {
        
        VStack{
            if locationManager.location != nil {
                Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil, annotationItems: vms.machines) {
                    VM in
                    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: VM.latitude, longitude: VM.longitude)) {
                        NavigationLink(destination: VendorView(VM: VM)) {
                            Image(VM.type)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width:60, height: 60)
                                .shadow(radius: 3)
                        }
                    }
                }
               // .navigationTitle("Vending Machines")
            }
            else{
                Text("Locating...")
            }
        }
        .onAppear { setCurrentLocation() }
    }
}


struct VendorMap_Previews: PreviewProvider {
    static var previews: some View {
        VendorMap()
    }
}
