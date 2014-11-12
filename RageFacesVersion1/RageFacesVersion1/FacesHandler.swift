//
//  FacesHandler.swift
//  RageFacesVersion1
//
//  Created by Madison DeHart on 10/7/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class FacesHandler: NSObject {
    
    class func fetchFaces() {
        let urlString = "http://www.tyten.com/fs2014/faces.json"
        let urlSession = NSURLSession.sharedSession()
        let facesURL = NSURL(string: urlString)
        urlSession.dataTaskWithURL(facesURL, completionHandler: { (data:NSData!, response:NSURLResponse!, NSErrorPointer) in
            println("REQUEST COMPLETED")
            let returnedDictionary = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as NSDictionary
            let faces = returnedDictionary.objectForKey("faces") as NSArray
            NSNotificationCenter.defaultCenter().postNotificationName("TCTFacesFetchingComplete", object: nil, userInfo: ["faces" : faces])
        }).resume()
    }
   
}
