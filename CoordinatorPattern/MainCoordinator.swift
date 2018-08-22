//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Mac mini on 8/22/18.
//  Copyright © 2018 Mac mini. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self 
        navigationController.pushViewController(vc, animated: false)
    }
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showVCByXIB() {
        let vc = ViewControllerFromXib()
        navigationController.pushViewController(vc, animated: true)
    }
    
}
