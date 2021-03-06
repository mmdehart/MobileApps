// Playground - noun: a place where people can play

import UIKit

let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 320.0, height: 480))

view.backgroundColor = UIColor.lightGrayColor()

let redView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 10.0))
redView.backgroundColor = UIColor.redColor()

let redViewWidthConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 10.0)


let redViewHeightConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10.0)

let redViewTopConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -10.0)

let redViewLeftConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)

view.setTranslatesAutoresizingMaskIntoConstraints(false)
redView.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addSubview(redView)

view.addConstraints([redViewWidthConstraint, redViewHeightConstraint, redViewTopConstraint, redViewLeftConstraint])
view.constraints()
view.layoutIfNeeded()
view
