//
//  CategoryTableViewCell.swift
//  OnlineStore
//
//  Created by Anderson Sales on 19/02/23.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    static let identifier: String = String(describing: CategoryTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func configureCell(category: Category) {
        cellImageView.image = UIImage(named: category.category.lowercased())
        cellLabel.text = category.category
    }
}
