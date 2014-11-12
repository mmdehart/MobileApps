// Playground - noun: a place where people can play

import UIKit


// Function that takes no parameters and returns nothing
func sayHello() {
    let hello = "Hello, class!"
}

sayHello()


// Function that takes one parameter
func saySomething(inString: String) {
    println(inString)
}

saySomething("hello")

// Function that takes two parameters
func addTwoNumbers (x: Int, y: Int) {
    let z = x + y
    println("\(z)")
}

addTwoNumbers(7, 8)

// You can have functions return values
func helloStringWithName(name:String) -> String {
    let greeting = "Hello, \(name)"
    return greeting
}

let compoundedGreeting = helloStringWithName("Tyten")

// A function can return multiple values at once via tuples
func someRandomObjects() -> (make: String, model: String, color: UIColor) {
    let carMake = "Dodge"
    let carModel = "Challenger"
    let carColor = UIColor(red: 0.1, green: 0.1, blue: 0.7, alpha: 1.0)
    return (carMake, carModel, carColor)
}

let myCarInfo = someRandomObjects()

let myCarMake = myCarInfo.make
let myCarModel = myCarInfo.model
let myCarColor = myCarInfo.2

// You can name the parameters for better readilegibility
func showOffNamedParameters(externalNameForParameter internalNameForParameter: String) {
    println("\(internalNameForParameter)")
}

showOffNamedParameters(externalNameForParameter: "Somebody poisoned the water hole.")

// You don't have to have different names for these parameters
func showOffUniformlyNamedParameters(#stringForOutput: String) {
    println("\(stringForOutput)")
}

showOffUniformlyNamedParameters(stringForOutput: "Uniformly named string.")

// Show off default values
func join(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
    return s1 + joiner + s2
}

join(string: "Hello", toString: "world", withJoiner: "-")
join(string: "Hello", toString: "world")

// What happens if we don't have named parameters in the function?
func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}

join("I'm blue", "daboo dee daboo die", joiner: "-")

// So how do we write this so it is not required?

func join(s1: String, s2: String, _ joiner: String = " ") -> String {
    return s1 + joiner + s2
}

join("I'm blue", "daboo dee daboo die", "-")

// Params are constants by default. Must specify var

func upperString(var inputString inString: String) -> String {
    inString = inString.uppercaseString
    return inString
}

// Inout parameters. Typically changes only in the scope of function itself

var someNumber = 3

func changeNumber(inout #numberToChange:Int) {
    numberToChange = 5
    numberToChange
}

changeNumber(numberToChange: &someNumber)

someNumber
