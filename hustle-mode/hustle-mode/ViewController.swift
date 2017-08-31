//
//  ViewController.swift
//  hustle-mode
//
//  Created by DevPair8 on 30/08/2017.
//  Copyright © 2017 DevPair8. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError{
            print (error.description)
        }
    }
    
    
    @IBAction func powerButtonPressed(_ sender: Any) {
        
        cloudHolder.isHidden = false
        powerButton.isHidden = true
        darkBlueBG.isHidden = true
        
        player.play()
        
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
        }) { (finished) in
            self.hustleLabel.isHidden = false
            self.onLabel.isHidden = false
        }
    }

}

