//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Edward O'Neill on 10/28/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colorList: [UIColor] = [#colorLiteral(red: 0.6234818428, green: 0.881373573, blue: 1, alpha: 1), .black, .blue, .brown, .darkGray, .red, .lightGray]
    @IBOutlet weak var displayLabel: UILabel!
    let textList = ["I pressed the button", "Hello World!!", "I love coding", "This is my first app at Pursuit!", "Need to study!"]
    
    // implicit unwrapping of an optional
    // weak is a memory optimizing feature we will talk more about further in the unit, basically the view controller will have a weak reference to the label outlet
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorChangeButtonPress(_ sender: UIButton) {
        
//        guard let buttonTitle = sender.titleLabel?.text else { return } // to unwrap optional
//
//        displayLabel.text = textList.randomElement()
//
//        switch buttonTitle.lowercased() {
//        case "red":
//            displayLabel.text = "The color is red"
//            view.backgroundColor = .red
//            count = 1
//        case "no me!":
//            count += 5
//            break
//        case "reset":
//            count = 0
//            break
//        default:
//            break
//        }
        
        let newColor: (color: UIColor?, name: String)
        
        switch sender.tag {
        case 1:
            newColor = (.red, "Red")
        case 2:
            newColor = (.green, "Green")
        case 3:
            newColor = (.blue, "Blue")
        default:
            newColor = (colorList.randomElement() ?? .white, textList.randomElement() ?? "white")
        }
        view.backgroundColor = newColor.color
        displayLabel.text = "The background color is \(newColor.name)"
    }
    
}

