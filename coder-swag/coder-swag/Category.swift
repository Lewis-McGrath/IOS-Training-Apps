//
//  Category.swift
//  coder-swag
//
//  Created by Lewis McGrath on 12/10/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName :String
    
    init(title : String , imageName : String) {
        self.title = title
        self.imageName = imageName
    }
}
