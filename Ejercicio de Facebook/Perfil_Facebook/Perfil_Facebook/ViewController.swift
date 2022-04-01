//
//  ViewController.swift
//  Perfil_Facebook
//
//  Created by Alejandra Etchevers on 31/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circularProfilePic: UIImageView!
    @IBOutlet weak var backProfilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circularProfilePic.layer.masksToBounds = true
        circularProfilePic.layer.cornerRadius = circularProfilePic.bounds.width / 2
        circularProfilePic.layer.borderColor = UIColor.white.cgColor
        
        circularProfilePic.contentMode = .scaleToFill
        circularProfilePic.layer.borderWidth = 5
        // Do any additional setup after loading the view.
    }


}

