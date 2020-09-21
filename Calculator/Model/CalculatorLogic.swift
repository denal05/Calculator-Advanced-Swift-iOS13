//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Denis Aleksandrov on 9/21/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        switch symbol {
            case "AC":
                return  0
            case "+/-":
                return (number * -1)
            case "%":
                return (number * 0.01)
            default:
                return  nil
        }
    }
}
