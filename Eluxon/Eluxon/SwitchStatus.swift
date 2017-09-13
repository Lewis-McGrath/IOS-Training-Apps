//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Lewis McGrath on 11/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on
    case off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
