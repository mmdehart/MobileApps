// Playground - noun: a place where people can play

import UIKit

let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 320.0, height: 480.0))

view.backgroundColor = UIColor.yellowColor()
view.backgroundColor = UIColor(red: 240.0, green: 230.0, blue: 242.0, alpha: 1.0)


let redView = UIView(frame: CGRect(x: 40.0, y: 100.0, width: 100.0, height: 100.0))
redView.backgroundColor = UIColor(red: 244.0/255.0, green: 30.0/255.0, blue: 15.0/255.0, alpha: 1.0)

view.addSubview(redView)

var orangeRect = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
let orangeColor = UIColor.orangeColor()
let orangeView = UIView(frame: orangeRect)
orangeView.backgroundColor = orangeColor
view.addSubview(orangeView)

var xPositionForRed = redView.frame.origin.x
var yPositionForRed = redView.frame.origin.y

orangeView.frame.origin.x = xPositionForRed
orangeView.frame.origin.y = yPositionForRed + redView.frame.size.height

view
