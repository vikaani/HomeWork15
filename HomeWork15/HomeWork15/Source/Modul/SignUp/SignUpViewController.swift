//
//  SignUpViewController.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class SignUpViewController: UIViewController {
    var onGoButton: (() -> ())?
   
    @IBAction private func didTapGoButton() {
        onGoButton?()
    }
}
