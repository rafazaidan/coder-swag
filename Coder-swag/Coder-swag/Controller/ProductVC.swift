//
//  ProductVC.swift
//  Coder-swag
//
//  Created by Rafa Zaidan on 02/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {

    @IBOutlet weak var productCollectionView: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        
    }
    
    
    func initProducts(category: Category) {
        products = DataService.instance.getProduct(forCategory: category.title)
        
        navigationItem.title = category.title
    }


}

extension ProductVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            
            return cell
        }
        
        return ProductCell()
    }
    
}
