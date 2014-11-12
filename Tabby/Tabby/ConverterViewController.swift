//
//  ConverterViewController.swift
//  Tabby
//
//  Created by Madison DeHart on 10/28/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit
import Foundation

class ConverterViewController: UIViewController {

    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var celciusInput: UITextField!
    @IBOutlet weak var convertBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   */ 
    
    @IBAction func doConvert() {
        //var cTempVal = (celciusInput.text as NSString).doubleValue
        //var fTempVal = cTempVal * 1.8 + 32
        //farenheitLabel.text = "\(fTempVal)"
        
        if let cTempVal = NSNumberFormatter().numberFromString(celciusInput.text) {
            let fTempVal = Double(cTempVal) * 1.8 + 32
           farenheitLabel.text = String(format: "%.2f", fTempVal)
        }
        
        //var number = (celciusInput!.text as NSString).floatValue
        //var newNum = (number * 1.8) + 32
        //farenheitLabel!.text = (newNum as NSNumber).stringValue
        //farenheitLabel?.text = "\(newNum)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
