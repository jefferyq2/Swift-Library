//
//  SecondViewController.swift
//  Protocol&Delegate
//
//  Created by Gülşah Alan on 14.09.2021.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(name: String , color: UIColor)
}

class SecondViewController: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func maviButtonPressed(_ sender: UIButton) {
        selectionDelegate.didTapChoice(name: "mavi", color: UIColor.systemBlue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func kırmızıButtonPressed(_ sender: UIButton) {
        selectionDelegate.didTapChoice(name: "kırmızı", color: UIColor.systemRed)
        dismiss(animated: true, completion: nil)
    }
}
