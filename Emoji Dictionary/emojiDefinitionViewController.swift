//
//  emojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Richardson on 10/15/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class emojiDefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.theEmoji
        emojiDefLabel.text = emoji.def
        birthLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
        /*
        if emoji == "😀"{
            emojiDefLabel.text = "Grinning Face"
            birthLabel.text = "Birth Year: 2010"
            categoryLabel.text = "Category: Faces"
        }
        if emoji == "😃"{
            emojiDefLabel.text = "Grinning Face with open mouth"
            birthLabel.text = "Birth Year: 2012"
            categoryLabel.text = "Category: Faces"
        }
        if emoji == "😄"{
            emojiDefLabel.text = "Grinning Face with squinting eyes"
            birthLabel.text = "Birth Year: 2011"
            categoryLabel.text = "Category: Faces"
        }
        if emoji == "😁"{
            emojiDefLabel.text = "Grinning Face with smiling eyes"
            birthLabel.text = "Birth Year: 2012"
            categoryLabel.text = "Category: Faces"
        }
        if emoji == "😆"{
            emojiDefLabel.text = "Grinning Face with tightly closed eyes"
            birthLabel.text = "Birth Year: 2014"
            categoryLabel.text = "Category: Faces"
        }
       */
    }

}

