//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Lewis McGrath on 05/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate{
    
    func userDidChoose(color: UIColor, withName colorName: String)
}
