//  ViewController.swift
//  iOS-Maps-Locations
//  Created by Jerry Tan on 03/08/2019.
//  Copyright © 2019 Starknet Technologies®. All rights reserved.


import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //3.065664 101.483424 i-City Location
        
        map.mapType = .satellite
        
        let latitude: CLLocationDegrees = 3.065664
        let longitude: CLLocationDegrees = 101.483424
        
        let latDelta: CLLocationDegrees = 0.05
        let longDelta: CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region = MKCoordinateRegion(center: coordinates, span: span)
        
        map.setRegion(region, animated: true)
        
        
        
        //A concrete annotation object tied to the specified point on the map | Annotation
        let annotation = MKPointAnnotation()
        
        //Annotation title
        annotation.title = "ICity"
        //Annotation subtitle
        annotation.subtitle = "Target Location"
        
        //Annotation coordinate | coordinates object
        annotation.coordinate = coordinates
        
        //Add map annotation | MKPointAnnotation( )
        map.addAnnotation(annotation)
 
        
        
        
        
        

////MKMapView Setup Guides
        
//        //A latitude or longitude value specified in degrees | Map View Level
//        let latitude: CLLocationDegrees = 40.8
//        let longitude: CLLocationDegrees = -73.9
//
//        //A latitude or longitude value specified in degrees | Map Zoom In Level
//        let latDelta: CLLocationDegrees = 0.05
//        let longDelta: CLLocationDegrees = 0.05
//
//        //The width and height of a map region | Combination of latDelta & longDelta
//        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
//
//        //The latitude and longitude associated with a location, specified using the WGS 84 reference frame | Combination of latitude & longitude
//        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
//
//        //A rectangular geographic region centered around a specific latitude and longitude | Combination of location & span
//        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
//
//        //Changes the currently visible region and optionally animates the change | Set map region
//        map.setRegion(region, animated: true)
        
    }
}

