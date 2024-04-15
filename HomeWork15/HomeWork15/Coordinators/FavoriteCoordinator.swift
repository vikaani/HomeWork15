//
//  FavoriteCoordinator.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class FavoriteCoordinator {
    var rootViewController: UIViewController {
        navigationController
    }
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        openBlackScreen()
    }
    
    private func openBlackScreen() {
        let vc = BlackViewController()
        vc.onNextButton = openGreenScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func openGreenScreen() {
        let vc = GreenViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
