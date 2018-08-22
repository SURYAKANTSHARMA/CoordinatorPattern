//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Mac mini on 8/22/18.
//  Copyright © 2018 Mac mini. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
