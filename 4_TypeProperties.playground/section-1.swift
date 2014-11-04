// Playground - noun: a place where people can play

import UIKit

struct AudioChannel {
    static var thresholdLevel = 10
    static var maxInputLevelForChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = 10
            }
            if currentLevel > AudioChannel.maxInputLevelForChannels {
                AudioChannel.maxInputLevelForChannels = currentLevel
            }
        }
    }
    static func displayLevels(leftChannel: AudioChannel, rightChannel: AudioChannel){
        println("Audio levels for channels. Left: \(leftChannel.currentLevel). Right: \(rightChannel.currentLevel)")
        println("Max. input level for Channels: \(AudioChannel.maxInputLevelForChannels)")
    }
    
}

// Create stereo
var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 5
AudioChannel.displayLevels(leftChannel, rightChannel: rightChannel)
rightChannel.currentLevel = 4
AudioChannel.displayLevels(leftChannel, rightChannel: rightChannel)
rightChannel.currentLevel = 15
AudioChannel.displayLevels(leftChannel, rightChannel: rightChannel)
