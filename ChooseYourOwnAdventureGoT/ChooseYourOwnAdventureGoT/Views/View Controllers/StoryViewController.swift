//
//  StoryViewController.swift
//  ChooseYourOwnAdventureGoT
//
//  Created by Omri Horowitz on 2/10/21.
//
import UIKit

class StoryViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var storyChapterLabel: UILabel!
    @IBOutlet weak var storyChapterImageView: UIImageView!
    @IBOutlet weak var storyChapterDescriptionLabel: UILabel!
    @IBOutlet weak var storyChoice1ButtonText: UIButton!
    @IBOutlet weak var storyChoice2ButtonText: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    //MARK: - Actions
    
    @IBAction func storyChoice1ButtonTapped(_ sender: UIButton) {
        StoryController.shared.nextStoryText(choice: sender.currentTitle!)
        updateViews()
        
        
        
    }
    @IBAction func storyChoice2ButtonTapped(_ sender: UIButton) {
        StoryController.shared.nextStoryText(choice: sender.currentTitle!)
        updateViews()
        
        
    }
    
    func updateViews() {
        storyChapterLabel.text = StoryController.shared.getStoryLabel()
        storyChapterDescriptionLabel.text = StoryController.shared.getStoryText()
        storyChapterImageView.image = StoryController.shared.getStoryImage()

        if StoryController.shared.getChoice1() == "" {
                    storyChoice1ButtonText.isHidden = true
                    storyChoice2ButtonText.isHidden = true
                } else {
                    storyChapterImageView.image = StoryController.shared.getStoryImage()
                    storyChoice1ButtonText.setTitle(StoryController.shared.getChoice1(), for: .normal)
                    storyChoice2ButtonText.setTitle(StoryController.shared.getChoice2(), for: .normal)
                }
    }
}
