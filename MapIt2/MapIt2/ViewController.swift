//
//  ViewController.swift
//  MapIt2
//
//  Created by Madison DeHart on 11/11/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // from original project
        //var latitude:CLLocationDegrees = 38.927246
        //var longitude:CLLocationDegrees = -92.315984
        //var latDelta:CLLocationDegrees = 0.03
        //var lonDelta:CLLocationDegrees = 0.03
        
        // this was added so we could get functions from the appdelegate
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        // get the mapdata
        let mapData = appDelegate.getMapData()
        
        //from original project
        //var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:latDelta, longitudeDelta:lonDelta)
        //var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        //var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        // THE ABOVE CODE WAS REPLACED WITH THE CODE BELOW
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:mapData.latDelta, longitudeDelta:mapData.lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(mapData.latitude, mapData.longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated:true)
        
        //Dale gave us these things
        // its just things to put a pin at the location and a little popover when the pin is clicked.
        var mapAnnotation = MKPointAnnotation()
        mapAnnotation.coordinate = location
        mapAnnotation.title = "Capen Park Area"
        mapAnnotation.subtitle = "Rock Climbing!"
        mapView.addAnnotation(mapAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/*
To be used in class:

let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate

*/

