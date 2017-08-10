//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Abhinav Shukla on 2017-08-06.
//  Copyright © 2017 Abhinav Shukla. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀","🥑","💩","🇨🇦","♥️","🏎", "🍳", "🥘", "🕌"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //generate a list based on total count of emojis
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //grab the emoji stored in the array and pass it to sender below
        let emoji = emojis[indexPath.row]
        
        //the steps performed in the segue
        //sender is where we pass the actual emoji stored in the array
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        
        emojiDefVC.emoji = sender as! String
    }

}
