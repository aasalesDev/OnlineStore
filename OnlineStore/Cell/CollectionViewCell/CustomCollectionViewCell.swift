//
//  CustomCollectionViewCell.swift
//  OnlineStore
//
//  Created by Anderson Sales on 20/02/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionImageView: UIImageView!
    
    static let identifier: String = String(describing: CustomCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCollectionView(image: String) {
        collectionImageView.image = UIImage(named: image)
    }
}
