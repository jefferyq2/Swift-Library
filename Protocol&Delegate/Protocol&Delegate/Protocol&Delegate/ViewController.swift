//
//  ViewController.swift
//  Protocol&Delegate
//
//  Created by Gülşah Alan on 14.09.2021.
//

import UIKit

class ViewController: UIViewController, SideSelectionDelegate {
    
    func didTapChoice(name: String, color: UIColor) {
        headlineLabel.text = name
        headlineLabel.backgroundColor = color
    }
    

    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }

    @IBAction func chooseButtonPressed(_ sender: UIButton) {
        let destinationVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        destinationVC.selectionDelegate = self
        
        present(destinationVC, animated: true, completion: nil)
    }
    
}

