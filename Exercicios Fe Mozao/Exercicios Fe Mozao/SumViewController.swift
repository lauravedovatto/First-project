//
//  SumViewController.swift
//  Exercicios Fe Mozao
//
//  Created by Felipe Melo on 03/04/22.
//  Copyright © 2022 Felipe Melo. All rights reserved.
//

import UIKit

class SumViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
title = "Soma"
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var soma: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        var myString1 = num1.text!
        var myInt1 = Int(myString1) ?? 0
       
        var myString2 = num2.text!
        var myInt2 = Int(myString2) ?? 0
    
        
        var somaInt = myInt1 + myInt2
        
        
        soma.text = "Resultado: \(somaInt)"
    }







}


