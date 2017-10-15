//
//  ImojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Richardson on 10/15/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class ImojiTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = "Hello there"

        return cell
    }
    
}
