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

    }
    
    //MARK: - Actions
    
    @IBAction func storyChoice1ButtonTapped(_ sender: Any) {
    }
    @IBAction func storyChoice2ButtonTapped(_ sender: Any) {
    }
    
}
