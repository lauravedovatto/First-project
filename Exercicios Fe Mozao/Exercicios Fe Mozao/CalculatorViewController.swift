//
//  CalculatorViewController.swift
//  Exercicios Fe Mozao
//
//  Created by Felipe Melo on 04/04/22.
//  Copyright © 2022 Felipe Melo. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
//navigationController?.navigationBar.barTintColor = UIColor.black

    @IBOutlet weak var visorButton: UITextField! // .text = string
    var firstNumber: Double = 0 //double
    var operation = ""
    var shouldClear = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       title = "Calculadora"
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.7450980392, green: 0.1568627451, blue: 0.07450980392, alpha: 1)
        super.viewDidDisappear(animated)
    }
    
    func changeButtonNumbers (number: Int) {

        if operation == "" {
            if visorButton.text == "0" {
                visorButton.text = "\(number)"
            } else {
                visorButton.text! += "\(number)"
            }
        } else {
            if shouldClear {
                visorButton.text = "\(number)"
                shouldClear = false
            } else {
                visorButton.text! += "\(number)"
            }
        }
    }
    
    func converterStringParaDouble() -> Double {
         return Double(visorButton.text!) ?? 0
    }
    func converterDoubleParaString(value: Double) -> String {
        return "\(value)"
    }
 
    
    @IBAction func PercentButton(_ sender: Any) {
    firstNumber = converterStringParaDouble()
        operation = "%"
        shouldClear = true

    }

    @IBAction func negativeButton(_ sender: Any) {
        if visorButton.text?.first != "-" {
           visorButton.text = "-\(visorButton.text!)"
        } else {
            visorButton.text?.removeFirst()

    }
    }
    @IBAction func clearButton(_ sender: Any) {
        
        if visorButton.text != "0" {
            visorButton.text = "0"
        }
    }
    
    @IBAction func divideButton(_ sender: Any) {
        firstNumber = converterStringParaDouble()
        operation = "/"
        shouldClear = true
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        if operation == "" {
            if visorButton.text == "0" {
                visorButton.text = "7"
            } else {
                visorButton.text! += "7"
            }
        } else {
            if shouldClear {
                visorButton.text = "7"
                shouldClear = false
            } else {
                visorButton.text! += "7"
            }
        }
    }
    
    @IBAction func eightButton(_ sender: Any) {
        if operation == "" {
            if visorButton.text == "0"{
                visorButton.text = "8"
            } else {
                visorButton.text! += "8"
            }
        } else {
          if shouldClear {
            visorButton.text = "8"
            shouldClear = false
            
          } else {
            visorButton.text! += "8"
        }
    }
    }
    
    @IBAction func nineButton(_ sender: Any) {
        changeButtonNumbers(number: 9)
    }
    
    @IBAction func multplyButton(_ sender: Any) {
        firstNumber = converterStringParaDouble()
        operation = "*"
        shouldClear = true
    }
    
    @IBAction func fourButton(_ sender: Any) {
        changeButtonNumbers(number: 4)
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        changeButtonNumbers(number: 5)
    }
    
    @IBAction func sixButton(_ sender: Any) {
        changeButtonNumbers(number: 6)
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        firstNumber = converterStringParaDouble()
        operation = "-"
        shouldClear = true
    }
    
    @IBAction func oneButton(_ sender: Any) {
        changeButtonNumbers(number: 1)
    }
    
    @IBAction func twoButton(_ sender: Any) {
        changeButtonNumbers(number: 2)
    }
    
    @IBAction func threeButton(_ sender: Any) {
        changeButtonNumbers(number: 3)
    }
    
    @IBAction func sumButton(_ sender: Any) {
        firstNumber = converterStringParaDouble()
        operation = "+"
        shouldClear = true
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        changeButtonNumbers(number: 0)
    }
    
    @IBAction func dotButton(_ sender: Any) {
        visorButton.text! += "."
    }
    
    @IBAction func equalButton(_ sender: Any) {
        let secondNumber = converterStringParaDouble()
        
        if operation == "*" {
            visorButton.text = converterDoubleParaString(value: firstNumber * secondNumber)
           
        } else if operation == "+" {
            visorButton.text = converterDoubleParaString(value: firstNumber + secondNumber)
        } else if operation == "-" {
            visorButton.text = converterDoubleParaString(value: firstNumber - secondNumber)
        } else if operation == "/" {
            visorButton.text = converterDoubleParaString(value: firstNumber / secondNumber)
        } else if operation == "%" {
            visorButton.text = converterDoubleParaString(value: firstNumber * (secondNumber * 0.01))
        }
        
        operation = ""
    }
    
}
