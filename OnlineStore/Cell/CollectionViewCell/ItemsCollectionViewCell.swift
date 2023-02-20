//
//  ItemsCollectionViewCell.swift
//  OnlineStore
//
//  Created by Anderson Sales on 19/02/23.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    static let identifier: String = String(describing: ItemsCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCollectionViewCell() {
        collectionImageView.image = UIImage(named: "shirts")
        descriptionLabel.text = "Description"
        productLabel.text = "Product"
        priceLabel.text = "U$ Price"
    }

}
