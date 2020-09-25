//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Denis Aleksandrov on 9/21/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    private var number: Double?
    private var intermediateCalculation: (firstOperand: Double, operation: String)?
    
    mutating func setNumber (_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
            case "AC":
                return  0
            case "+/-":
                return (n * -1)
            case "%":
                return (n * 0.01)
            case "=":
                return performTwoNumberCalculation(secondOperand: n)
            default:
                intermediateCalculation = (firstOperand: n, operation: symbol)
            }
        }
        
        return nil
    }
    
    private func performTwoNumberCalculation(secondOperand n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.firstOperand, let op = intermediateCalculation?.operation {
            if op == "+" {
                return n1 + n2
            }
            
            switch op {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError("The passed-in operation does not match +, -, * or /")
            }
        }
        
        return nil
    }
}
