//
//  OrangeViewController.swift
//  CodeOnly
//
//  Created by Madison DeHart on 9/29/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {
    
    var stringToDisplay:String?
    
    override func loadView() {
        view = UIView(frame: UIScreen.mainScreen().bounds)
        view.backgroundColor = UIColor.orangeColor()
    }
}