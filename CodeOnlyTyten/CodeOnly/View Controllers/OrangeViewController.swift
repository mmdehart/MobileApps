//
//  OrangeViewController.swift
//  CodeOnly
//
//  Created by Tyten Teegarden on 9/18/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

	var stringToDisplay:String?
	var displayLabel = UILabel(frame: CGRectZero)

	override func loadView() {
		view = UIView(frame: UIScreen.mainScreen().bounds)
		view.backgroundColor = UIColor.orangeColor()
		displayLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
		self.view.addSubview(displayLabel)

		let displayLabelCenterXConstraint = NSLayoutConstraint(item: displayLabel, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0.0)

		let displayLabelCenterYConstraint = NSLayoutConstraint(item: displayLabel, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 0.0)

		self.view.addConstraints([displayLabelCenterXConstraint, displayLabelCenterYConstraint])
	}

	override func viewDidLoad() {
		//displayLabel.text = stringToDisplay
	}
}
