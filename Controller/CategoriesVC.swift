//
//  ViewController.swift
//  coder-swag
//
//  Created by Code on 13/4/18.
//  Copyright © 2018 Code. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var categotyTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categotyTable.dataSource = self
        categotyTable.delegate = self
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellTableViewCell") as? CategoryCellTableViewCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCellTableViewCell()
        }
    }
    
}





















