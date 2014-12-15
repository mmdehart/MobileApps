//
//  MapData.swift
//  MapIt2
//
//  Created by Madison DeHart on 11/11/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

// created a new cocoa class file with type(or something) of NSObject
import UIKit
import MapKit

class MapData: NSObject {
    // this is just copy/pasted from the viewcontroller
    var latitude:CLLocationDegrees = 38.524389
    var longitude:CLLocationDegrees = -90.409860
    var latDelta:CLLocationDegrees = 0.15
    var lonDelta:CLLocationDegrees = 0.15
    
    
    //var homeLat:CLLocationDegrees = 38.510803
    //var homeLong:CLLocationDegrees = -90.456684
    //var homelocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(homeLat, homeLong)
    // ^^ gives error???
    var homelocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(38.510803, -90.456684)
    var homeTitle = "DeHart Home"
    var homeSubTitle = "YAY"
    
    //var soccerLat:CLLocationDegrees = 38.525172
    //var soccerLong:CLLocationDegrees = -90.439722
    //var soccerlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(soccerLat, soccerLong)
    // ^^ gives error...
    var soccerlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(38.525172, -90.439722)
    var soccerTitle = "Soccer Fields"
    var soccerSubTitle = "YAY"
    
    //var trumanLat:CLLocationDegrees = 38.546001
    //var trumanLong:CLLocationDegrees = -90.398429
    //var trumanlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude:trumanLat, longitude:trumanLong)
    // ^^ gives error
    var trumanlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(38.546001, -90.398429)
    var trumanTitle = "Truman Elementary School"
    var trumanSubTitle = "it's now a middle school!"
    
    //var lindberghLat:CLLocationDegrees = 38.532440
    //var lindberghLong:CLLocationDegrees = -90.375083
    //var lindlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lindberghLat, lindberghLong)
    // ^^ gives error...
    var lindlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(38.532440, -90.375083)
    var lindTitle = "Lindbergh High School"
    var lindSubTitle = "High school is a weird time"
    
    
}



