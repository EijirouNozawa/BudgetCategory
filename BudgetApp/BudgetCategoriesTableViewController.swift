//
//  ViewController.swift
//  BudgetApp
//
//  Created by 野澤英二郎 on 2026/04/02.
//

import UIKit
import CoreData

class BudgetCategoriesTableViewController: UITableViewController {
    
    private var persistentContainer: NSPersistentContainer!
    
    init(persistentContainer: NSPersistentContainer) {
        self.persistentContainer = persistentContainer
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setuiUI()
    }
    
    @objc func showAddBudgetCategory(_ sender: UIBarButtonItem) {
        
        
    }

    private func setuiUI() {
        
        let addBudgetCategoryButton = UIBarButtonItem(title: "カテゴリーを追加", style: .done, target: self, action: #selector(showAddBudgetCategory))
        self.navigationItem.rightBarButtonItem = addBudgetCategoryButton
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "予算"
    }

}

