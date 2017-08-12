//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Abhinav Shukla on 2017-08-07.
//  Copyright © 2017 Abhinav Shukla. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    //initializing an emoji variable as Emoji type to store and "send" the emojis
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //loads all emojis and it's properties
        emojiLabel.text = emoji.emojiType
        birthLabel.text = "Release Year: \(emoji.emojiReleaseYear)"
        categoryLabel.text = "Category: \(emoji.emojiCategoryType)"
        emojiDefinitionLabel.text = emoji.emojiDefinition
        
    }

}
