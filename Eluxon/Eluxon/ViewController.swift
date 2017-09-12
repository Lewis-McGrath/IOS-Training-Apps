//
//  ViewController.swift
//  Eluxon
//
//  Created by Lewis McGrath on 11/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var togglePowerButton: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleButtonWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            togglePowerButton.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            onOffLabel.text = "🌚OFF🌚"
            onOffLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else {
            togglePowerButton.setImage(UIImage(named:"onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            onOffLabel.text = "🌝ON🌝"
            onOffLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        }
    }
}
