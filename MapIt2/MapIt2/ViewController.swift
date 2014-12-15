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
        
        // this was added so we could get functions from the appdelegate
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        // get the mapdata
        let mapData = appDelegate.getMapData()
        
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:mapData.latDelta, longitudeDelta:mapData.lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(mapData.latitude, mapData.longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated:true)
        
        var homeAnnotation = MKPointAnnotation()
        homeAnnotation.coordinate = mapData.homelocation
        homeAnnotation.title = mapData.homeTitle
        homeAnnotation.subtitle = mapData.homeSubTitle
        mapView.addAnnotation(homeAnnotation)
        
        var soccerAnnotation = MKPointAnnotation()
        soccerAnnotation.coordinate = mapData.soccerlocation
        soccerAnnotation.title = mapData.soccerTitle
        soccerAnnotation.subtitle = mapData.soccerSubTitle
        mapView.addAnnotation(soccerAnnotation)
        
        var trumanAnnotation = MKPointAnnotation()
        trumanAnnotation.coordinate = mapData.trumanlocation
        trumanAnnotation.title = mapData.trumanTitle
        trumanAnnotation.subtitle = mapData.trumanSubTitle
        mapView.addAnnotation(trumanAnnotation)
        
        var lindAnnotation = MKPointAnnotation()
        lindAnnotation.coordinate = mapData.lindlocation
        lindAnnotation.title = mapData.lindTitle
        lindAnnotation.subtitle = mapData.lindSubTitle
        mapView.addAnnotation(lindAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

