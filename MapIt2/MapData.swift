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
    var latitude:CLLocationDegrees = 38.927246
    var longitude:CLLocationDegrees = -92.315984
    var latDelta:CLLocationDegrees = 0.03
    var lonDelta:CLLocationDegrees = 0.03
}
