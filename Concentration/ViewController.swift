//
//  ViewController.swift
//  Concentration
//
//  Created by Angela Nayiga on 9/8/18.
//  Copyright © 2018 Angela Nayiga. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount = 0
    {
        didSet
        {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton)
    {
        flipCount += 1
        
        flipCard(withEmoji: "👻", on: sender)
    }
    
    @IBAction func touchSecondCard(_ sender: UIButton)
    {
        flipCount += 1
        
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton)
    {
        if button.currentTitle == emoji
        {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9681652188, green: 0.5626425743, blue: 0, alpha: 1)
        }
        else
        {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
