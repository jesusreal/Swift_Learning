// Playground - noun: a place where people can play

import UIKit

struct LevelTracker {
    static var highestLevelUnlocked: Int = 1
    static func unlockLevel (levelToUnlock: Int) {
        if levelToUnlock > highestLevelUnlocked {
            LevelTracker.highestLevelUnlocked = levelToUnlock
        }
    }
    static func isLevelUnlocked (level: Int) -> Bool {
        return level <= highestLevelUnlocked
    }
    
    var currentLevel: Int = 1
    mutating func advanceToLevel (level: Int) -> Bool {
        if LevelTracker.isLevelUnlocked(level) {
            currentLevel = level
            return true
        }
        else {
            return false
        }
        
    }

}

class Player {
    var levelTracker = LevelTracker()
    let playerName: String
    func completedLevel(level: Int){
        LevelTracker.unlockLevel(level+1)
        levelTracker.advanceToLevel(level+1)
    }
    init(playerName: String){
        self.playerName = playerName
    }
}


var player1 = Player(playerName: "Jesus")
player1.completedLevel(10)
LevelTracker.isLevelUnlocked(7)
LevelTracker.highestLevelUnlocked
player1.levelTracker.advanceToLevel(5)



var player2 = Player(playerName: "Liam")
player2.completedLevel(2)
if player2.levelTracker.advanceToLevel(8) {
    println("\(player2.playerName) is now on level \(player2.levelTracker.currentLevel)")
} else {
    println("level 8 is not unlocked yet")
}
LevelTracker.highestLevelUnlocked
player1.levelTracker.currentLevel
player2.levelTracker.currentLevel



