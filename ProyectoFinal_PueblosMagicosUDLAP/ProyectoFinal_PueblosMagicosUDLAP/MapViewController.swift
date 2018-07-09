//
//  MapViewController.swift
//  ProyectoFinal_PueblosMagicosUDLAP
//
//  Created by Nelson Gonzalez on 11/27/17.
//  Copyright © 2017 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController
{
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationDistance: CLLocationDistance = 800
    
    func cambioTipoDeMapa(aSegmentedControl: UISegmentedControl)
    {
        switch aSegmentedControl.selectedSegmentIndex
        {
            
        case 0:
            mapView.mapType = MKMapType.standard
            
        case 1:
            mapView.mapType = MKMapType.hybrid
            
        case 2:
            mapView.mapType = MKMapType.satellite
            
        default:
            
            break
            
        }//end switch
        
    }//end cambioTipoDeMapa
    
    func centrarMapaEnLugar(location: CLLocation)
    {
        // se define la coordinateRegion
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, locationDistance, locationDistance*1.5)
        
        mapView.setRegion(coordinateRegion, animated: true)
        
    }//end centrarMapaEnLugar
    
    override func loadView()
    {
        //Construimos el MKMapView
        
        mapView = MKMapView()
        
        //y lo asignamos como el view de este viewcontroller
        
        view = mapView
        
        // construimos un UISegmentedControl
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        //
        //correr...
        //
        //Se usan archors para crear constraints
        //El top anchor del segmented control debe ser igual
        //al top anchor de su superview
        //Mejor 8 puntos abajo...
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant:8)
        
        //uso de margenes (de clase UILayoutGuide
        
        let margenes = view.layoutMarginsGuide
        
        //el leading anchor del segmented control debe ser igual
        //al leading anchor de su margin.
        
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margenes.leadingAnchor)
        
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margenes.trailingAnchor)
        //se activan las constraints
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        //
        //manejo del evento del segmented control
        
        segmentedControl.addTarget(self, action: #selector(MapViewController.cambioTipoDeMapa(aSegmentedControl:)), for: UIControlEvents.valueChanged)
    }//end loadView
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let lugar = CLLocation(latitude: (Model.currentPlace?.latitude)!, longitude: (Model.currentPlace?.longitude)!)
        centrarMapaEnLugar(location: lugar)
        
        let place = MapPlace(title: (Model.currentPlace?.name)!, locationName: "", coordinate: CLLocationCoordinate2D(latitude: (Model.currentPlace?.latitude)!, longitude: (Model.currentPlace?.longitude)!))
        
        mapView.addAnnotation(place)
    }//end viewDidLoad
    
    
  
    
    
    
}//end MapViewController
