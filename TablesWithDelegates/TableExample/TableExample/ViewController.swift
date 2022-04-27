//
//  ViewController.swift
//  TableExample
//
//  Created by Alejandra Etchevers on 7/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let names = [
        "Alejandra",
        "German",
        "Adrian",
        "Pedro",
        "Pepito"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //Register the cells
        tableView.register(UINib(nibName: NumberTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: NumberTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NumberTableViewCell.identifier) as! NumberTableViewCell
        
        cell.mainLabel.text = names[indexPath.row]
        cell.indexPath = indexPath
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("the \(indexPath.row) row was selected!")
    }
}

extension ViewController: NumberTableViewCellDelegate {
    func didTapAddButton(indexPath: IndexPath) {
        print("The button selected \(indexPath.row)")
    }
    
    
}

