// Playground - noun: a place where people can play

import UIKit

// Constant
let x = 5 + 7

// Variable
var y:Int

y = 3.0

var aString = "The value of Y is: "

// Variables in strings
aString = "The value of Y is: \(y + (x / 2))"

var myArray = ["Eenie", "Meenie", "Miney", "Moe"]

var myDictionary = [ "first" : "Eenie", "second" : "Meenie", "third" : "Miney", "fourth" : "Moe"]

myArray[3]

myDictionary["second"]

var typedArray = [String]()
var typedDictionary = [String:String]()


if 1 == 2 {
    let statement = "Duh"
}

for item in myArray {
    item
}


var firstName: String? = "Shawn"

if let name = firstName {
    name
}

switch firstName! {
case "Tyten":
    let aboutThisPerson = "Graduated in 2010"
case "Shawn", "Rob":
    let aboutThisPerson = "TA for the course."
default:
    let aboutThisPerson = "Don't know anything about this person."
}

var i = 0

for a in 0..<7 {
    a
}


