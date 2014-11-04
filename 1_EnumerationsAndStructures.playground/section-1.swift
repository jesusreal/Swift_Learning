// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Enumerations (p.284)

enum BarCode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

var productCode = BarCode.UPCA(8, 85909_51226, 3)
productCode = .QRCode("ABCDEFGHIJKLMNOP")

switch productCode {
case let .UPCA (numberSystem, identifier, check):
    println("UPCA code! Value: \(numberSystem), \(identifier), \(check)")
case let .QRCode(productCode):
    println("QR code! Value: \(productCode)")
}



// Raw values (p.288)
enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var planet1 = Planet.Earth
let planetPosition = planet1.toRaw()
println("\(planetPosition)")


let position = 3
let planetName = Planet.fromRaw(position)
println(planetName)

if let planet2 = Planet.fromRaw(position) {
    switch planet2 {
    case .Earth:
        println("Welcome to the Earth!")
    default:
        println("Sorry, you still cannot live there!")
    }
} else if position == 9 {
    println("Maybe searching for Pluto? It's not a planet anymore!")
} else {
    println("There is no planet at position \(position). Actually. you went beyond the milky way, please come back")

}







































