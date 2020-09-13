//
//  ViewController.swift
//  You Are Awesome!!
//
//  Created by Milagros Yoch on 9/7/20.
//  Copyright © 2020 Milagros Yoch. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
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
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber ==  newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
    
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name:"sound0") {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("😡 ERROR: \(error.localizedDescription) Could not initizalize AVAudioPlayer object.")
            }
        } else {
            print("😡 ERROR: Could not read data from file sound0")
        }
    }
}
    


