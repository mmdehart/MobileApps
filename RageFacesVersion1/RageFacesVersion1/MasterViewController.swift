//
//  MasterViewController.swift
//  RageFacesVersion1
//
//  Created by Madison DeHart on 10/7/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var faces = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //register to observe a particular notification
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didObserveFacesFetchingComplete:", name: "TCTFacesFetchingComplete", object: nil)
        
        //get data
        FacesHandler.fetchFaces()
    }
    
    // this code runs when we observe a notification
    func didObserveFacesFetchingComplete (notification:NSNotification) {
        let userInfo = notification.userInfo as NSDictionary!
        faces = userInfo["faces"] as NSArray
    }
    
    
    
    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
              
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        return cell
    }

}

