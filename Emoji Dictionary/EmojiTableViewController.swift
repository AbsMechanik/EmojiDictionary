//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Abhinav Shukla on 2017-08-06.
//  Copyright © 2017 Abhinav Shukla. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀","🥑","💩","🇨🇦","♥️","🏎", "🍳", "🥘"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
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
        
        //constant to store emoji view controller
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        
        //testing output of emoji passed via segue to view controller
        emojiDefVC.emoji = sender as! String
    }

}
