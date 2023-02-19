//
//  CategoriesVC.swift
//  OnlineStore
//
//  Created by Anderson Sales on 19/02/23.
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let categoryModel = Categories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CategoryTableViewCell.nib(), forCellReuseIdentifier: CategoryTableViewCell.identifier)
    }

}

extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryModel.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as? CategoryTableViewCell {
            cell.configureCell(category: categoryModel.getCategories()[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
}

