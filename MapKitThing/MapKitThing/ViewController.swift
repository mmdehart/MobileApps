//
//  ViewController.swift
//  MapKitThing
//
//  Created by Madison DeHart on 11/4/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // My parent's house. Don't hurt them.
        var latitude:CLLocationDegrees = 38.510727
        var longitude:CLLocationDegrees = -90.456560
        let latDelta:CLLocationDegrees = 0.03
        var lonDelta:CLLocationDegrees = 0.03
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:latDelta, longitudeDelta:lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated:true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

