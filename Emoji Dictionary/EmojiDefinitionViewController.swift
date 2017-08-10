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
    
    var emoji = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        //display emoji defintion depending on emoji displayed
        //emoji reference: ["😀","🥑","💩","🇨🇦","♥️","🏎", "🍳", "🥘"]
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
    }

}
