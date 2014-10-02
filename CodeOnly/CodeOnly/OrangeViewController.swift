//
//  OrangeViewController.swift
//  CodeOnly
//
//  Created by Madison DeHart on 9/29/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

//
//  OrangeViewController.swift
//  CodeOnly
//
//  Created by Madison DeHart on 9/18/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {
    var stringToDisplay:String?
    let displayLabel = UILabel(frame: CGRectZero)
    
    override func loadView() {
        view = UIView(frame: UIScreen.mainScreen().bounds)
        view.backgroundColor = UIColor.orangeColor()
        /*
        displayLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let displayLabelCenterXConstraint = NSLayoutConstraint(item: displayLabel, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        let displayLabelCenterYConstraint = NSLayoutConstraint(item: displayLabel, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraints([displayLabelCenterXConstraint, displayLabelCenterYConstraint])
    }
    
    override func viewDidLoad() {
        displayLabel.text = stringToDisplay*/
    }
    
}
