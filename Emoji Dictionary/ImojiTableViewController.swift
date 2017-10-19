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
    var emojis : [Emoji] = []
    // Ctrl-CMD-Spacebar
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.theEmoji) -- \(emoji.birthYear)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    //Runs just before view Segue so we can pass info
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! emojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji]{
        let grinningFace = Emoji()
        grinningFace.theEmoji = "😀"
        grinningFace.def = "Grinning Face"
        grinningFace.birthYear = 2010
        grinningFace.category = "Faces"
        
        let openMouth = Emoji()
        openMouth.theEmoji = "😃"
        openMouth.def = "Grinning Face with open mouth"
        openMouth.birthYear = 2010
        openMouth.category = "Faces"
        
        let squintingEyes = Emoji()
        squintingEyes.theEmoji = "😄"
        squintingEyes.def = "Grinning Face with squinting eyes"
        squintingEyes.birthYear = 2011
        squintingEyes.category = "Faces"
        
        let smilingEyes = Emoji()
        smilingEyes.theEmoji = "😁"
        smilingEyes.def = "Grinning Face with smiling eyes"
        smilingEyes.birthYear = 2012
        smilingEyes.category = "Faces"
        
        let closedEyes = Emoji()
        closedEyes.theEmoji = "😆"
        closedEyes.def = "Grinning Face with closed eyes"
        closedEyes.birthYear = 2014
        closedEyes.category = "Faces"
        
        return [grinningFace, openMouth, squintingEyes, smilingEyes, closedEyes]
    }
    
}
