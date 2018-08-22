//
//  CreateAccountViewController.swift
//  CoordinatorPattern
//
//  Created by Mac mini on 8/22/18.
//  Copyright © 2018 Mac mini. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var tableView: UITableView!
    weak var coordinator: MainCoordinator?
    let dataSource = CreateAccountDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
    }

}



