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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    


}

extension ProductVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}
