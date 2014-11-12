//
//  ViewController.swift
//  PickerThing
//
//  Created by Madison DeHart on 10/31/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerThing: UIPickerView!
    @IBOutlet weak var labelForPicker: UILabel!
    
    let pickerData = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerThing.delegate = self;
        pickerThing.dataSource = self;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelForPicker.text = pickerData[row]
    }
    
}

