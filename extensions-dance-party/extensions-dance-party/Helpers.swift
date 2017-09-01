//
//  Helpers.swift
//  extensions-dance-party
//
//  Created by Lewis McGrath on 01/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import UIKit

func generateRandomNumbers(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
            randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
