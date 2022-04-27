//
//  CollectionViewCell.swift
//  Collection views
//
//  Created by Alejandra Etchevers on 20/4/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainText: UITextField!
    static let identifier = "CollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
