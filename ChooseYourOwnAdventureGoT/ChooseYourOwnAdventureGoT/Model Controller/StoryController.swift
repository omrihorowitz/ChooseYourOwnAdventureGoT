//
//  StoryController.swift
//  ChooseYourOwnAdventureGoT
//
//  Created by stanley phillips on 2/10/21.
//

import UIKit

class StoryController {
    static let shared = StoryController()
    var storyNum = 0
    
    let jonSnowStory = [
        Story(storyText: "", storyImage: UIImage(named: "jonsnow")!, choice1: "", choice1Destination: 1, choice2: "", choice2Destination: 4)
    ]
    
    
    func getStoryText() -> String {
        return jonSnowStory[storyNum].storyText
    }
    
    func getChoice1() -> String {
        return jonSnowStory[storyNum].choice1
    }
    
    func getChoice2() -> String {
        return jonSnowStory[storyNum].choice2
    }
    
    
    func nextStoryText(choice: String) {
        let currentStory = jonSnowStory[storyNum]
        if choice == currentStory.choice1 {
            storyNum = currentStory.choice1Destination
        } else if choice == currentStory.choice2 {
            storyNum = currentStory.choice2Destination
        }
    }
}//end class
