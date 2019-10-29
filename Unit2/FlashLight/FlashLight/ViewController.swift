//
//  ViewController.swift
//  FlashLight
//
//  Created by Edward O'Neill on 10/29/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colorList: [UIColor] = [.black, .blue, .brown, .cyan, .darkGray, .gray, .green, .lightGray, .red, .yellow, .orange, .purple, .systemGreen]
    @IBOutlet weak var flashlightCondition: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hiddenButton(_ sender: UIButton) {
        view.backgroundColor = colorList.randomElement()
        flashlightCondition.text = "You found the hidden button!"
        flashlightCondition.textColor = .white
    }
    @IBAction func flashLight(_ sender: UISwitch) {
        if view.backgroundColor == .black {
            view.backgroundColor = .white
            flashlightCondition.textColor = .black
            flashlightCondition.text = "Flashlight is on"
        } else {
            view.backgroundColor = .black
            flashlightCondition.textColor = .white
            flashlightCondition.text = "Flashlight is off"
        }
    }
    
}

