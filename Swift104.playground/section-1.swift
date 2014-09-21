// Playground - noun: a place where people can play

import UIKit

class Square {
    let numberOfSides = 4
    var area: Int {
        get {
            return (self.length * self.width)
        }
        set {
            self.area = newValue
        }
    }
    
    var length = 0
    var width = 0
}

var aSquare = Square()

var thisSquare = aSquare


aSquare.width = 5
aSquare.length = 7
aSquare.area

thisSquare.width = 8
aSquare.width

var anotherSquare = Square()
anotherSquare.width = 2