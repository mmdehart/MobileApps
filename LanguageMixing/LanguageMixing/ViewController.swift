//
//  ViewController.swift
//  LanguageMixing
//
//  Created by Tyten Teegarden on 9/25/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let aPerson = Person(firstName: "Tyten", lastName: "Teegarden", andAgeInYears: 31)
		println("Person was initialized")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

