//
//  ViewController.swift
//  extensions-dance-party
//
//  Created by Lewis McGrath on 01/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colouriseButton: UIButton!
    
    @IBOutlet weak var wiggleButton: UIButton!
    
    @IBOutlet weak var dimButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colourisedButtonWasPressed(_ sender: Any) {
        colouriseButton.colourise()
    }
    

    @IBAction func wiggleButtonWasPressed(_ sender: Any) {
        wiggleButton.wiggle()
    }

    
    @IBAction func dimButtonWasPressed(_ sender: Any) {
        dimButton.dim()
    }
    
}
