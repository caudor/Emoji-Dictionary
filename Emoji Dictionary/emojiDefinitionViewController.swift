//
//  emojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Richardson on 10/15/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class emojiDefinitionViewController: UIViewController {

    var emoji = ""
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        if emoji == "😀"{
            emojiDefLabel.text = "Grinning Face"
        }
        if emoji == "😃"{
            emojiDefLabel.text = "Grinning Face with open mouth"
        }
        if emoji == "😄"{
            emojiDefLabel.text = "Grinning Face with squinting eyes"
        }
        if emoji == "😁"{
            emojiDefLabel.text = "Grinning Face with smiling eyes"
        }
        if emoji == "😆"{
            emojiDefLabel.text = "Grinning Face with tightly closed eyes"
        }
        
    }

}

