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
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                       "You Are Great!",
                       "You Are Fantastic",
                       "When the Genuis Bar Needs Helps, They Call You!",
                       "Fabulous? That's You!",
                       "You've Got the Design Skills of Jony Ive"]
        
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        while messageLabel.text ==  newMessage {
            print("*** We had a repeating value. Both newMessage and messageLabel.text = \(newMessage)and \(messageLabel.text!)")
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        messageLabel.text = newMessage
    
        
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
   
        }
    }
    


