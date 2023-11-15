//
//  ViewController.swift
//  IOS101-PreWork
//
//  Created by Jay Vekariya on 11/13/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let (red, green, blue) = changeColors()
        changeUniColor?.textColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        changeNameColor?.textColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        changeJobColor?.textColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        changeButtonColor.tintColor = UIColor(red: red, green: green, blue: blue, alpha: 0.2)
        changeButtonColor.configuration?.baseForegroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 0.3)
    }
    
    @IBOutlet weak var changeButtonColor: UIButton!
    @IBOutlet weak var changeNameColor: UILabel!
    @IBOutlet weak var changeUniColor: UILabel!
    @IBOutlet weak var changeJobColor: UILabel!
    
    func changeColors() -> (CGFloat, CGFloat, CGFloat) {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return (red, green, blue)
    }

}

