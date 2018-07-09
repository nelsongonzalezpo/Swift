////
////  Otro.swift
////  ProyectoFinal_PueblosMagicosUDLAP
////
////  Created by Nelson Gonzalez on 11/29/17.
////  Copyright © 2017 Nelson Gonzalez. All rights reserved.
////
//
//import Foundation
//import UIKit
//import MapKit
//
//class MapViewController: UIViewController, MKMapViewDelegate {
//    
//    //// IBOutlets ////////
//    @IBOutlet weak var mapView: MKMapView!
//    
//    @IBAction func onClick(_ sender: Any) {
//        
//        print(Model.shortCounter)
//        print((Model.currentPlace?.id)!)
//        Model.totalKm = Model.totalKm + (Model.currentPlace?.kilometers)!
//        if Model.currentPlace?.id == "shortDistance"{
//            Model.shortCounter = Model.shortCounter + 1
//        }//ed if
//        if Model.currentPlace?.id == "midDistance"{
//            Model.shortCounter = Model.midCounter + 1
//        }//ed if
//        if Model.currentPlace?.id == "longDistance"{
//            Model.shortCounter = Model.longCounter + 1
//        }//ed if
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        mapView.delegate = self
//        
//        let sourceLocation = CLLocationCoordinate2D(latitude: 19.0712626, longitude: -98.2745748)
//        let destinationLocation = CLLocationCoordinate2D(latitude: (Model.currentPlace?.latitude)!, longitude: (Model.currentPlace?.longitude)!)
//        
//        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
//        let destinationPlacemark = MKPlacemark(coordinate: destinationLocation, addressDictionary: nil)
//        
//        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
//        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
//        
//        let sourceAnnotation = MKPointAnnotation()
//        sourceAnnotation.title = "You are here"
//        
//        if let location = sourcePlacemark.location {
//            sourceAnnotation.coordinate = location.coordinate
//        }
//        
//        
//        let destinationAnnotation = MKPointAnnotation()
//        destinationAnnotation.title = Model.currentPlace?.name
//        
//        if let location = destinationPlacemark.location {
//            destinationAnnotation.coordinate = location.coordinate
//        }
//        
//        self.mapView.showAnnotations([sourceAnnotation,destinationAnnotation], animated: true )
//        
//        let directionRequest = MKDirectionsRequest()
//        directionRequest.source = sourceMapItem
//        directionRequest.destination = destinationMapItem
//        directionRequest.transportType = .walking
//        
//        let directions = MKDirections(request: directionRequest)
//        
//        directions.calculate {
//            (response, error) -> Void in
//            
//            guard let response = response else {
//                if let error = error {
//                    print("Error: \(error)")
//                }
//                
//                return
//            }
//            
//            let route = response.routes[0]
//            self.mapView.add((route.polyline), level: MKOverlayLevel.aboveRoads)
//            let rect = route.polyline.boundingMapRect
//            
//            print(rect)
//            
//            self.mapView.setRegion(MKCoordinateRegionForMapRect(rect), animated: true)
//        }
//        
//        
//    }//end viewDidLoad
//    
//    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
//        let polylineRenderer = MKPolylineRenderer(overlay: overlay)
//        polylineRenderer.fillColor = UIColor.red
//        polylineRenderer.strokeColor = UIColor.green
//        polylineRenderer.lineWidth = 4
//        return polylineRenderer
//    }//end mapView
//    
//    
//    
//    
//}//end MapViewController
