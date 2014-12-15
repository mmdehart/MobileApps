//
//  ViewController.swift
//  TableViewThing
//
//  Created by Madison DeHart on 10/31/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableCell: UITableViewCell!
    @IBOutlet weak var tableThing: UITableView!
    
    let tableData = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableThing.delegate = self
        tableThing.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }


    //func t
}

