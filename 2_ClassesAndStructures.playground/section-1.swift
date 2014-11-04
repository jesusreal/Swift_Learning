// Playground - noun: a place where people can play

import UIKit

// STRUCTURES
struct Resolution {
    var width = 0
    var height = 0
}

let vga = Resolution(width: 640, height: 480)
let hd = Resolution(width: 1920, height: 1080)

var cinema = hd;
cinema.width = 2560
println("Width for cinema: \(cinema.width); with for hd: \(hd.width)")



// CLASSES (1)
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
var filmVideoMode = VideoMode()
filmVideoMode.resolution.height = 1080
println(filmVideoMode.resolution.height)



// CLASSES (2)
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

if tenEighty === alsoTenEighty {
    println("The frame reate of tenEighty is now \(tenEighty.frameRate)")
}























