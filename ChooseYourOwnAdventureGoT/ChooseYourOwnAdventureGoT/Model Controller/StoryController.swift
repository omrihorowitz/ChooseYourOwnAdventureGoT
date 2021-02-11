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
        Story(storyLabel: "Together or Alone?", storyText: "Jon Snow has a hard choice to make. Does he choose to stay in Winterfell with this fam or to go on his own and join the Night Watchers?", storyImage: UIImage(named: "jonsnow")!, choice1: "Always choose family!", choice1Destination: 1, choice2: "Fuck those bastards. I'm leaving!", choice2Destination: 4)
    ]
    
    
    func getStoryLabel() ->String {
        return jonSnowStory[storyNum].storyLabel
    }
    
    func getStoryText() -> String {
        return jonSnowStory[storyNum].storyText
    }
    
    func getStoryImage() -> UIImage {
        return jonSnowStory[storyNum].storyImage
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
