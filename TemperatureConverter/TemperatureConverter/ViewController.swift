//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Madison DeHart on 10/21/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var convertBtn:UIButton?
    @IBOutlet var farenheit:UILabel?
    @IBOutlet var celcius:UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func convertTemp() {
        var number = (celcius!.text as NSString).floatValue
        var newNum = (number * 1.8) + 32
        //farenheit?.text = (newNum as NSNumber).stringValue
        farenheit?.text = "\(newNum)"
    }


}

