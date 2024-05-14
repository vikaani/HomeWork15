//
//  WhiteViewController.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class WhiteViewController: UIViewController {
    var onNextButton: (() -> ())?

    @IBAction private func didTapNextButton() {
        onNextButton?()
    }
}
