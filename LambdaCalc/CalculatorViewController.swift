//
//  CalculatorViewController.swift
//  LambdaCalc
//
//  Created by Aaron on 7/19/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var calcTextView: UITextField!
    @IBOutlet weak var keypad: UIStackView!
    var symbol =  String()
    var myType = Type(rawValue: "add")
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - Calculator Method
    @IBAction func keypadButtonPressed(_ sender: UIButton) {
        
        switch sender.titleLabel?.text {
        case "1","2","3","4","5","6","7","8","9","0": calcTextView.text?.append(String((sender.titleLabel?.text) ?? "error"))
            
        case "CE": calcTextView.text = ""
        case "+" : myType = .add
            calcTextView.text?.append(String((sender.titleLabel?.text) ?? "error"))
            symbol = "+"
        case "-" : myType = .minus
        calcTextView.text?.append(String((sender.titleLabel?.text) ?? "error"))
        symbol = "-"
        case "/": myType = .divide
        calcTextView.text?.append(String((sender.titleLabel?.text) ?? "error"))
        symbol = "/"
        case "*": myType = .multiply
        calcTextView.text?.append(String((sender.titleLabel?.text) ?? "error"))
        symbol = "*"
        case "=":
            
            if let equation = calcTextView.text {
        
            
                let operand1 = equation.components(separatedBy: symbol)[0]
                let operand2 =  equation.components(separatedBy: symbol)[1]
                let answer = Calculate.init(a: Int(operand1) ?? 0, b: Int(operand2) ?? 0, type: myType ?? .add).operation()
                calcTextView.text?.append("= \(answer)")
                print(operand1)
                print(operand2)
                print(symbol)
            }
            default: return
            }
        }

    
    // TODO: - Segue to Settings
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }
 
}
