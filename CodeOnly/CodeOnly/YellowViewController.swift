//
//  YellowViewControllers.swift
//  CodeOnly
//
//  Created by Madison DeHart on 9/18/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
    let textField = UITextField(frame: CGRectZero)
    let button = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
    
    var textFieldConstraints:[NSLayoutConstraint] {
        var constraintArray = [NSLayoutConstraint]()
            let centerYConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutAttribute.CenterY, relatedBy: .Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0.0)
            let leftConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutAttribute.Left, relatedBy: .Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10.0)
            let rightConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutAttribute.Right, relatedBy: .Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)
            constraintArray = [centerYConstraint, leftConstraint, rightConstraint]
            return constraintArray
    }
    
    var buttonConstraints:[NSLayoutConstraint] {
        let centerXConstraint = NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: textField, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
            let topConstraint = NSLayoutConstraint(item: button, attribute: .Top, relatedBy: .Equal, toItem: textField, attribute: .Bottom, multiplier: 1.0, constant: 10.0)
            let constraintArray = [centerXConstraint, topConstraint]
            
            return constraintArray
    }
    
    
    
    override func loadView() {
        view = UIView(frame: UIScreen.mainScreen().bounds)
        view.backgroundColor = UIColor.yellowColor()
        
        textField.setTranslatesAutoresizingMaskIntoConstraints(false)
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        view.addSubview(textField)
        view.addConstraints(textFieldConstraints)
        
        textField.borderStyle = UITextBorderStyle.RoundedRect
        
        view.addSubview(button)
        button.setTitle("Go To Next", forState: .Normal)
        button.setTitleColor(view.tintColor, forState: .Normal)
        view.addConstraints(buttonConstraints)
        
        // targets for buttons
        button.addTarget(self, action: "pushNextViewController", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func pushNextViewController() {
        let orangeViewController = OrangeViewController(nibName: nil, bundle: nil)
        orangeViewController.stringToDisplay = textField.text
        navigationController?.pushViewController(orangeViewController, animated: true)
    }
}
