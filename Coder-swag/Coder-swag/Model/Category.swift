//
//  Category.swift
//  Coder-swag
//
//  Created by Rafa Zaidan on 02/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
