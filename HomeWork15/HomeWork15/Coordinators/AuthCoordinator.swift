//
//  AuthCoordinator.swift
//  HomeWork15
//
//  Created by Vika on 11.04.2024.
//

import UIKit

class AuthCoordinator { 
    var rootViewController: UIViewController {
        navigationController
    }
    
    private let navigationController: UINavigationController
    private let onFinish: () -> ()
    
    init(navigationController: UINavigationController, onFinish: @escaping () -> ()) {
        self.navigationController = navigationController
        self.onFinish = onFinish
    }
    
    func start() {
        openWellcomeScreen()
    }
    
    private func openWellcomeScreen() {
        let vc = WellcomeViewController()
        vc.onSignIn = openSigInScreen
        vc.onSignUp = openSignUpScreen
        vc.onSkip = onFinish
        navigationController.viewControllers.append(vc)
    }
    
    private func openSigInScreen() {
        let vc = SignInViewController()
        vc.onGoButton = onFinish
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func openSignUpScreen(){
        let vc = SignUpViewController()
        vc.onGoButton = onFinish
        navigationController.pushViewController(vc, animated: true)
    }
}
