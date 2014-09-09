// Playground - noun: a place where people can play

import UIKit

let viewRect = CGRect(x: 0.0, y: 0.0, width: 320.0, height: 480.0)
let view = UIView(frame: viewRect)
view.setTranslatesAutoresizingMaskIntoConstraints(false)
view.backgroundColor = UIColor(red: 240.0/255.0, green: 230.0/255.0, blue: 242.0/255.0, alpha: 1.0)

let greenView = UIView(frame: viewRect)
greenView.setTranslatesAutoresizingMaskIntoConstraints(false)
greenView.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.6, alpha: 1.0)

let blueView = UIView(frame: CGRectZero)
blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
blueView.backgroundColor = UIColor(red: 0.0, green: 0.4, blue: 0.7, alpha: 1.0)

let orangeView = UIView(frame: CGRectZero)
orangeView.setTranslatesAutoresizingMaskIntoConstraints(false)
orangeView.backgroundColor = UIColor.orangeColor()

let yellowView = UIView(frame: CGRectZero)
yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)
yellowView.backgroundColor = UIColor.yellowColor()

greenView.addSubview(blueView)
greenView.addSubview(orangeView)
greenView.addSubview(yellowView)

let blueViewTop = NSLayoutConstraint(item: blueView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .Top, multiplier: 1.0, constant: 10.0)
let blueViewRight = NSLayoutConstraint(item: blueView, attribute: .Right, relatedBy: .Equal, toItem: orangeView, attribute: .Left, multiplier: 1.0, constant: -6.0)
let blueViewBottom = NSLayoutConstraint(item: blueView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: -3.0)
let blueViewLeft = NSLayoutConstraint(item: blueView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .Left, multiplier: 1.0, constant: 10.0)

let orangeViewTop = NSLayoutConstraint(item: orangeView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .Top, multiplier: 1.0, constant: 10.0)
let orangeViewRight = NSLayoutConstraint(item: orangeView, attribute: .Right, relatedBy: .Equal, toItem: greenView, attribute: .Right, multiplier: 1.0, constant: -10.0)
let orangeViewBottom = NSLayoutConstraint(item: orangeView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: -3.0)
let orangeViewLeft = NSLayoutConstraint(item: orangeView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .CenterX, multiplier: 1.0, constant: 3.0)

let yellowViewTop = NSLayoutConstraint(item: yellowView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: 3.0)
let yellowViewRight = NSLayoutConstraint(item: yellowView, attribute: .Right, relatedBy: .Equal, toItem: greenView, attribute: .Right, multiplier: 1.0, constant: -10.0)
let yellowViewBottom = NSLayoutConstraint(item: yellowView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .Bottom, multiplier: 1.0, constant: -10.0)
let yellowViewLeft = NSLayoutConstraint(item: yellowView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .Left, multiplier: 1.0, constant: 10.0)

greenView.addConstraints([blueViewBottom, blueViewLeft, blueViewRight, blueViewTop, orangeViewBottom, orangeViewLeft, orangeViewRight, orangeViewTop, yellowViewBottom, yellowViewLeft, yellowViewRight, yellowViewTop])
greenView.layoutIfNeeded()


view.addSubview(greenView)

let greenViewTop = NSLayoutConstraint(item: greenView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 20.0)
let greenViewRight = NSLayoutConstraint(item: greenView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -16.0)
let greenViewBottom = NSLayoutConstraint(item: greenView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -10.0)
let greenViewLeft = NSLayoutConstraint(item: greenView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 16.0)

view.addConstraints([greenViewBottom, greenViewLeft, greenViewRight, greenViewTop])
view.layoutIfNeeded()
view