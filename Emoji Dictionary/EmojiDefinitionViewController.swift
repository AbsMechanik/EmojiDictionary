//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Abhinav Shukla on 2017-08-07.
//  Copyright © 2017 Abhinav Shukla. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    //initializing an emoji variable to store and "send" the emojis
    var emoji = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //display the appropriate emoji, e.g. smiley face should display
        //enlarged version of smiley face
        emojiLabel.text = emoji
        
        //display emoji defintion depending on emoji displayed
        //emoji reference: ["😀","🥑","💩","🇨🇦","♥️","🏎", "🍳", "🥘"]
        
        //using Switch instead of If-Else combos (commented out below)
        let emojiDefinition = emoji
        
        switch emojiDefinition
        {
        case "😀":
            emojiDefinitionLabel.text = "A big happy smiley face"
        case "🥑":
            emojiDefinitionLabel.text = "A big ripe avocado"
        case "💩":
            emojiDefinitionLabel.text = "A giant pile of poo"
        case "🇨🇦":
            emojiDefinitionLabel.text = "A beautiful Canadian Flag"
        case "♥️":
            emojiDefinitionLabel.text = "A big red heart"
        case "🏎":
            emojiDefinitionLabel.text = "A racecar sponsored by Swift"
        case "🍳":
            emojiDefinitionLabel.text = "A pan filled with a fried egg"
        case "🥘":
            emojiDefinitionLabel.text = "A plate full of food"
        default:
            emojiDefinitionLabel.text = "No definition for this emoji"
        }
        
        /*
        //if else combos to print the appropriate definition
        if (emoji == "🥑")
        {
            emojiDefinitionLabel.text = "Avocado"
        }
        else if emoji == "😀"
        {
            emojiDefinitionLabel.text = "Big Smiley Face"
        }
        else if emoji == "💩"
        {
            emojiDefinitionLabel.text = "Big pile of Poo"
        }
        else if emoji == "🇨🇦"
        {
            emojiDefinitionLabel.text = "Canadian Flag"
        }
        else if emoji == "♥️"
        {
            emojiDefinitionLabel.text = "A big heart!"
        }
        else if emoji == "🏎"
        {
            emojiDefinitionLabel.text = "A Race car sponsored by Swift"
        }
        else if emoji == "🍳"
        {
            emojiDefinitionLabel.text = "Fried egg"
        }
        else if emoji == "🥘"
        {
            emojiDefinitionLabel.text = "Pan full of food"
        }
 */
    }

}
