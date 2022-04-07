//
//  ViewController.swift
//  Exercicios Fe Mozao
//
//  Created by Felipe Melo on 03/04/22.
//  Copyright © 2022 Felipe Melo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var buttonAperte: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            title = "CONSEGUI"
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        if text.text == "Consegui?" {
            text.text = "Consegui!"
            text.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
//            buttonAperte.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//            buttonAperte.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            
        } else {
            text.text = "Consegui?"
            text.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }


}
// criar uma home
// mexer na cor da navigation bar
