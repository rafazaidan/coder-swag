//
//  ProductCell.swift
//  Coder-swag
//
//  Created by Rafa Zaidan on 02/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        priceLabel.text = product.price
    }
}
