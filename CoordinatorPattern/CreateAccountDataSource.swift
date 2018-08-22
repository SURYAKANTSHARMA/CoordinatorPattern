//
//  CreateAccountDataSource.swift
//  CoordinatorPattern
//
//  Created by Mac mini on 8/22/18.
//  Copyright © 2018 Mac mini. All rights reserved.
//

import UIKit

class CreateAccountDataSource: NSObject, UITableViewDataSource {
    
    static let reusableIdentifier = "Cell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CreateAccountDataSource.reusableIdentifier) else {
            fatalError("Cell not found")
        }
        let textField = cell.contentView.viewWithTag(1) as! UITextField
        switch indexPath.row {
        case 0:
             textField.placeholder = "Enter Name"
        case 1:
            textField.placeholder = "Enter Phone"
        case 2:
            textField.placeholder = "Enter Email"
        default:
            break
        }
       return cell
    }
    
}
