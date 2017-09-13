//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Lewis McGrath on 13/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }
}
