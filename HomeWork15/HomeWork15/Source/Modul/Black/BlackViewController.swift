//
//  BlackViewController.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class BlackViewController: UIViewController {
    var onNextButton: (() -> ())?

    @IBAction func didTapNextButton() {
        onNextButton?()
    }

}
