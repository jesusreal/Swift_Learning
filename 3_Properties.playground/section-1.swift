// Playground - noun: a place where people can play

import UIKit



// Computed properties. Set and Get

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size(width: 10, height: 10)
    var center: Point {
        get {
            var centerX = origin.x + size.width/2
            var centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.width/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y:0), size: Size(width: 10, height: 10))
println("Square center is at: \(square.center.x), \(square.center.y) ")
square.center = Point(x:20, y:20)
println("Square origin is now at: \(square.origin.x), \(square.origin.y) ")



// Computed properties. Get

struct Rect2 {
    var origin = Point()
    var size = Size(width: 10, height: 10)
    var center: Point {
        var centerX = origin.x + size.width/2
        var centerY = origin.y + size.height/2
        return Point(x: centerX, y: centerY)
    }
}

var square2 = Rect2(origin: Point(x: 0, y:0), size: Size(width: 10, height: 10))
println("Square center is at: \(square2.center.x), \(square2.center.y) ")
square2.origin.y = 10;
println("Square center is now at: \(square2.center.x), \(square2.center.y) ")





// Computed properties
class StepCounter {
    var computedSteps: Int = 0 {
        willSet(newComputedSteps) {
            if newComputedSteps > computedSteps {
                println("Computed steps is going to be set to \(newComputedSteps)")
            }else{
                println("New value of computed steps lower than the current value")
            }
        }
        didSet {
            if computedSteps > oldValue {
                println("Added \(computedSteps) steps! New value: \(computedSteps), old value: \(oldValue). Keep walking!")
            }
            else {
                computedSteps = oldValue
                println("Invalid value. New value should be higher than current value. Computed steps remain: \(computedSteps)")            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.computedSteps = 100
stepCounter.computedSteps = 50


























