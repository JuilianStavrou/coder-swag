//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by Code on 13/4/18.
//  Copyright © 2018 Code. All rights reserved.
//

import UIKit

class CategoryCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
