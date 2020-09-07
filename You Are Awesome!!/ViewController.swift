//
//  ViewController.swift
//  You Are Awesome!!
//
//  Created by Milagros Yoch on 9/7/20.
//  Copyright © 2020 Milagros Yoch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍🏽 viewDidLoad has run!")
        messageLabel.text = "Fabulous That's You!"
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("🥺 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
}

