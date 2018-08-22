//
//  ViewControllerFromXib.swift
//  CoordinatorPattern
//
//  Created by Mac mini on 8/22/18.
//  Copyright © 2018 Mac mini. All rights reserved.
//

import UIKit

class ViewControllerFromXib: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let xib = Bundle.main.loadNibNamed("FareSummaryView", owner: self, options: nil)![0] as! UIView
        view = xib
    }
    

}
