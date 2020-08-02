//
//  DataService.swift
//  Coder-swag
//
//  Created by Rafa Zaidan on 02/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import Foundation

class DataService {
    
    // Creating the singleton
    static let instance = DataService()
    
    
    // Creating the categories array
    let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    // Method that returns an array of categories
    func getCategories() -> [Category] {
        return categories
    }
    
    
}
