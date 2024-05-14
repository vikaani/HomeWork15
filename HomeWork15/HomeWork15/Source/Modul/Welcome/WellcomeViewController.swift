//
//  WellcomeViewController.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class WellcomeViewController: UIViewController {
    var onSignIn: (() -> ())?
    var onSignUp: (() -> ())?
    var onSkip: (() -> ())?
    
    @IBAction private func didTapSignInButton() {
        onSignIn?()
    }
    
    @IBAction private func didTapSignUpButton() {
        onSignUp?()
    }
    
    @IBAction private func didTapSkipButton() {
        onSkip?()
    }
}
