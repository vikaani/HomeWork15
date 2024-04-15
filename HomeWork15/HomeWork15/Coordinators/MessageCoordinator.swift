//
//  MessageCoordinator.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class MessageCoordinator {
    var rootViewController: UIViewController {
        navigationController
    }
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        openBrownScreen()
    }
    
    private func openBrownScreen() {
        let vc = BrownViewController()
        vc.onNextButton = openRedScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func openRedScreen() {
        let vc = RedViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
