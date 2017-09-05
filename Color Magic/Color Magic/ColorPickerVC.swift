//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Lewis McGrath on 05/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorButtonWasPressed(sender: UIButton){
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
}
