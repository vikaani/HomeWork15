//
//  CallCoordinator.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class CallCoordinator {
    var rootViewController: UIViewController {
        navigationController
    }
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        openWhiteScreen()
    }
    
    private func openWhiteScreen() {
        let vc = WhiteViewController()
        vc.onNextButton = openYellowScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func openYellowScreen() {
        let vc = YellowViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
