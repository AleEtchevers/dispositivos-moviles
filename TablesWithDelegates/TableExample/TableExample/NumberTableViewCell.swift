//
//  NumberTableViewCell.swift
//  TableExample
//
//  Created by Alejandra Etchevers on 7/4/22.
//

import UIKit

protocol NumberTableViewCellDelegate {
    func didTapAddButton(indexPath: IndexPath)
}

class NumberTableViewCell: UITableViewCell {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    var delegate: NumberTableViewCellDelegate?
    var indexPath: IndexPath?
    
    static let identifier = "NumberTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func tappedAddButton(_sender: Any) {
        if let indexPath = indexPath {
            delegate?.didTapAddButton(indexPath: indexPath)
        }
    }
}
