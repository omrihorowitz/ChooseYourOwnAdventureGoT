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
        Story(storyLabel: "Winterfell", storyText: "Winter is coming and Jon Snow’s adventure is just starting. Will you stick out the cold with your family or venture off on your own?", storyImage: UIImage(named: "jonsnow")!, choice1: "Stick with Starks", choice1Destination: 1, choice2: "Make your own path", choice2Destination: 4),
        
        //stark fam
        Story(storyLabel: "Family is Everything", storyText: "You may be the bastard of the family, but you love them, and for the most part they love you. Do you want to fight for a legitimate “Stark” title, or are you content as a “Snow?", storyImage: UIImage(named: "starkfam")!, choice1: "A bastard’s life for me", choice1Destination: 1, choice2: "Push for legitimacy", choice2Destination: 1),

        //legitimacy
        Story(storyLabel: "You've died!", storyText: "Well that didn’t go according to plan…your siblings resented your claim to their lands and title, and decided to have you killed. Go get some outdoors time…or press above to start a new adventure!", storyImage: UIImage(named: "youdead")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //bastard
        Story(storyLabel: "The Bastard", storyText: "Being a bastard isn’t all that bad, you don’t have too many responsibilities and still have a home and family. That being said it can be a little hard on your emotions sometimes. You survive to live a moderately satisfying, moody existence…", storyImage: UIImage(named: "moodyjon")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //alone
        Story(storyLabel: "The Night’s Watch", storyText: "You’ve set off on your own and decided to join the Night’s Watch. An honorable position for someone born a bastard. There are rumors of White Walkers beyond The Wall but some of your fellow watchmen goad your concern and instigate an argument…", storyImage: UIImage(named: "nightswatch")!, choice1: "Fight them back", choice1Destination: 5, choice2: "Ignore them and take an expedition north of The Wall", choice2Destination: 6),

        //north of wall
        Story(storyLabel: "North of The Wall", storyText: "Following your instincts you take a scouting expedition north of The Wall to explore the potential White Walker sightings. The fears are confirmed and a massive White Walker army is spotted! ", storyImage: UIImage(named: "northofthewall")!, choice1: "Confront them head on!", choice1Destination: 7, choice2: "Ask the Wildings to merge forces", choice2Destination: 8),

        //confront
        Story(storyLabel: "You've Died", storyText: "Well that didn’t go according to plan…The White Walkers took you down easily, and now you’re cursed to an eternity as an undead slave! At least your trusted direwolf, Ghost, is a walker too and can keep you company. Go get some outdoors time…or press above to start a new adventure!", storyImage: UIImage(named: "youdead")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //wildlings
        Story(storyLabel: "Merging Forces", storyText: "The Wildlings are hesitant to help anyone from Westeros. You’ll have to earn their trust before they see the need to unite against the Walkers. How will you win them over?", storyImage: UIImage(named: "")!, choice1: "Feat of Love", choice1Destination: 10, choice2: "Feat of Strength", choice2Destination: 9),

        //strength
        Story(storyLabel: "You’ve died!", storyText: "Well that didn’t go according to plan…You tried to challenge the Wildling leader to a one on one combat match to show your strength. He had some surprising moves and…well…you didn’t make it. Go get some outdoors time…or press above to start a new adventure!", storyImage: UIImage(named: "youdead")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //love
        Story(storyLabel: "You Know Something, Jon Snow", storyText: "Turning your eyes to a pretty redhead second in command, you woo her over with your chiseled features and curly black locks. Next thing you know…you guys are having a little fun in some natural hot springs! Very nice! Great success!", storyImage: UIImage(named: "youknowsomethingjonsnow")!, choice1: "Fuck off into oblivion…literally", choice1Destination: 11, choice2: "Return to Westeros with your newly formed army", choice2Destination: 12),

        //       6 (Fuck off…)
        Story(storyLabel: "Ignorance is Bliss", storyText: "Turning your back on Westeros, the White Walkers, and your former family and home, you and Ygritte take your love making into the wilderness. The world goes to shit but hey, you had your sexy time so it’s all good right?", storyImage: UIImage(named: "foreverlove")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //       6 (Return)
        Story(storyLabel: "The King in the North!", storyText: "Humbled by your reports and impressed by your leadership, the members of the Night’s Watch and surrounding northern communities make you a king! Daenerys Targaryen arrives and challenges your rule, asking you to support her claim instead.", storyImage: UIImage(named: "youdead")!, choice1: "Maybe we can come to some sort of agreement…", choice1Destination: 0, choice2: "Oh hell no - it’s my time now!", choice2Destination: 0),

        //        7 (hell no)
        Story(storyLabel: "You’ve died!", storyText: "Well that didn’t go according to plan…Daenerys straight murked you! At least it was by stabbing and not dragon fire? Go get some outdoors time…or press above to start a new adventure!", storyImage: UIImage(named: "youdead")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //        7 (agreement)
        Story(storyLabel: "You a man hoe!", storyText: "You left Ygrette and started a new fling with Daenerys. A bit doggish of you, but hey she’s hot and a queen. What better way to retain power and have a good time as well. Even if Daenerys loses her shit sometimes…", storyImage: UIImage(named: "newgf")!, choice1: "This is the life", choice1Destination: 0, choice2: "This b be crazy", choice2Destination: 0),

        //        8 (the life)
        Story(storyLabel: "All Hail, Queen Daenerys!", storyText: "She may get a little feisty sometimes but she’s certainly effective. Burning down half of Westeros in furious anger, Daenerys takes control of the kingdom and defeats the White Walkers!", storyImage: UIImage(named: "queendaenerys")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //        9 (air)
        Story(storyLabel: "Dragonheart", storyText: "You steal Daenerys’ dragon and take to the skies — ice melts with fire right? Should be able to take down this Ice King guy pretty easily…", storyImage: UIImage(named: "dragon")!, choice1: "Breathe fire to the left", choice1Destination: 0, choice2: "Breathe fire to the right", choice2Destination: 0),

        //        10(breathe fire, both buttons)
        Story(storyLabel: "You’ve died!", storyText: "Well that didn’t go according to plan…The Ice King is invulnerable to fire! He threw a spear at you and took you down lickity split. Go get some outdoors time…or press above to start a new adventure!", storyImage: UIImage(named: "youdead")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //        10(by land)
        Story(storyLabel: "Face the Fire Head On", storyText: "You got some cajones on you muchacho! Deciding to fight by land you take the Ice King by surprise. He roars up on his dragon and things seem all but lost. This is it — all or nothing…", storyImage: UIImage(named: "lastbattle")!, choice1: "All", choice1Destination: 0, choice2: "Nothing", choice2Destination: 0),
        //        11(nothing)
        Story(storyLabel: "Seriously!?", storyText: "Why would you even pick this choice…do we really even have to go into details about how this panned out?", storyImage: UIImage(named: "youdead")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0),

        //        11(all)
        Story(storyLabel: "Sweet, Sweet Victory", storyText: "Your forward thinking attitude was so obvious, that it was actually still better than the half assed story dropped for the final season of the TV show! The Ice King is defeated, you become Protector of the Realm and King of Westeros, and victory is simple but sweet.", storyImage: UIImage(named: "protectorofrealm")!, choice1: "", choice1Destination: 0, choice2: "", choice2Destination: 0)

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
