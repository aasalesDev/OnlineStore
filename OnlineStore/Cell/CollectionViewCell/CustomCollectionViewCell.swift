//
//  CustomCollectionViewCell.swift
//  OnlineStore
//
//  Created by Anderson Sales on 20/02/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionImageView: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    static let identifier: String = String(describing: CustomCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCollectionView(product: Product) {
        collectionImageView.image = UIImage(named: product.image)
        productLabel.text = product.name
        productPrice.text = product.price
    }
    
    func configureEmptyCell() {
        collectionImageView.image = UIImage(named: "pc")
        productPrice.text = "Comming Soon..."
        productLabel.text = ""
    }
}
