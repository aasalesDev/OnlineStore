//
//  CategoriesVC.swift
//  OnlineStore
//
//  Created by Anderson Sales on 19/02/23.
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
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
        return DataService.instance.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as? CategoryTableViewCell {
            cell.configureCell(category: DataService.instance.getCategory(index: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = UIStoryboard(name: String(describing: CollectionViewVC.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: CollectionViewVC.self)) as? CollectionViewVC {
            vc.product = DataService.instance.getProduct(index: indexPath)
            vc.title = DataService.instance.getCategory(index: indexPath)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

