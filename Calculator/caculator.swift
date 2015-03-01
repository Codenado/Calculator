//
//  caculator.swift
//  Calculator
//
//  Created by Jeffrey Leonard on 2/21/15.
//  Copyright (c) 2015 Jeffrey Leonard. All rights reserved.
//

import Foundation


class Calculator {
    var currentValue: String = ""
    var display: String = ""
    var memory: String = "0"
    var action: String = ""
    
    func input(press: Int){
        currentValue = currentValue + String(press)
        display = currentValue
    }
    
    func newAction(press: Int){
        switch press {
        case 10:
            action = "+"
        case 11:
            action = "-"
        case 12:
            action = "*"
       
        default:
            println("oops")
        }
    }
    
    func doAction() {
        if memory.toInt() != nil && currentValue.toInt() != nil {
            switch action {
            case "+":
                memory = String(currentValue.toInt()! + memory.toInt()!)
            case "*":
                memory = String(currentValue.toInt()! * memory.toInt()!)

            case "-":
                memory = String(memory.toInt()! - currentValue.toInt()!)
                
            default:
                memory = currentValue
            }
            display = memory

            currentValue = ""
        }
    }
    
    func getInput(press: Int){
        
        switch press {
        case 0...9:
            input(press)
        case 10...12:
            doAction()
            newAction(press)
        case 13:
            doAction()
            action = ""
            
        case 14:
            display = "0"
            memory = "0"
            currentValue = ""
            action = ""
        default:
            println("error")
        }
    }
    
    func returnDisplay() -> String{
        if countElements(display) < 10{
            return display
        }
        else{
            return "Get a better calculator!"
        }
    }
}
    
    
    

