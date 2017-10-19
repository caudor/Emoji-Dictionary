//
//  ImojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Richardson on 10/15/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class ImojiTableViewController: UITableViewController {

    //Property
    var emojis = ["😀","😃","😄","😁", "😆"]
    // Ctrl-CMD-Spacebar
    
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
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    //Runs just before view Segue so we can pass info
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! emojiDefinitionViewController
        emojiDefVC.emoji = sender as! String
    }
    
}
