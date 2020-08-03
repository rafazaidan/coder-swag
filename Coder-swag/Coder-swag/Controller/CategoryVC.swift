//
//  ViewController.swift
//  Coder-swag
//
//  Created by Rafa Zaidan on 02/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController {

    @IBOutlet weak var categoriesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesTableView.delegate = self
        categoriesTableView.dataSource = self
    }


}

extension CategoryVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell {
            
            // Update the view of the cell
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category)
            
            // Return the created cell
            return cell
        
        }
        
        return CategoryCell()
    }
    
    // MARK: - Passing along the data based on the cell selected by the user
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productSegue", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Making sure that there is no text on the back button
        let navigationBarButton = UIBarButtonItem()
        navigationBarButton.title = ""
        navigationItem.backBarButtonItem = navigationBarButton
        
        // Passing the data along based on the cell that is tapped
        if let productVC = segue.destination as? ProductVC {
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }
}
