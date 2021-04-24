//
//  MapView.swift
//  Vendor
//
//  Created by turtly on 4/20/21.
//

import Foundation
import UIKit
import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    typealias UIViewType = UIView
    let latitude: Double
    let longitude: Double
    
    func makeUIView(context: Context) -> UIView{
        let view = UIView()
        
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let map = MKMapView()
        map.setRegion(MKCoordinateRegion(
                        center: coordinate,
                        span: MKCoordinateSpan(
                            latitudeDelta: 0.001,
                            longitudeDelta: 0.001)),
            animated:true

        )
        view.addSubview(map)
        
        map.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        map.addAnnotation(pin)
        
        return view
    }
    func updateUIView(_ uiView: UIView, context: Context){
        //do nothing
    }
    
}

class ViewController: UIViewController {
        
    func openMapForPlace(VM: VM){
        
        let x: CLLocationDegrees = VM.latitude
        let y: CLLocationDegrees = VM.longitude
    
        let regionDistance: CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2D(latitude: x, longitude: y)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = VM.name
        mapItem.openInMaps(launchOptions: options)
    }
}

