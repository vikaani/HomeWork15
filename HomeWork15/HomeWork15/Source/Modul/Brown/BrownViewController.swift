//
//  BrownViewController.swift
//  HomeWork15
//
//  Created by Vika on 13.04.2024.
//

import UIKit

class BrownViewController: UIViewController {
    var onNextButton: (() -> ())?
    
    @IBAction func didTapNextButton() {
        onNextButton?()
    }
}
