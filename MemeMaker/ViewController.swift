//
//  ViewController.swift
//  MemeMaker
//
//  Created by Eduard Tokarev on 15.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
        configureBottomSegmentControl()
        updateLabels()
    }

    @IBAction func SegmentedControl(_ sender: Any) {
        updateLabels()
    }
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    func configureTopSegmentControl() {
        let coolChoice = CaptionOption(emoji: "🕶", caption: "You know what's cool?")
        let madChoice = CaptionOption(emoji: "💥", caption: "You know what makes me mad?")
        let loveChoice = CaptionOption(emoji: "💞", caption: "You know what I love?")
        topChoices = [coolChoice, madChoice, loveChoice]
        
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
    }
    
    func configureBottomSegmentControl() {
        let catChoice = CaptionOption(emoji: "🐱", caption: "Cats wearing hats")
        let dogChoice = CaptionOption(emoji: "🐶", caption: "Dogs carrying logs")
        let monkeyChoice = CaptionOption(emoji: "🐵", caption: "Monkeys being funky")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
    
    }
    func updateLabels(){
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }
    
}

