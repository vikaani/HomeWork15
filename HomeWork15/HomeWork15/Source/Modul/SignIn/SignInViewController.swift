//
//  SignInViewController.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class SignInViewController: UIViewController {
    var onGoButton: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SignIn"
    }
    
    @IBAction private func didTapGoButton() {
        onGoButton?()
    }
}
