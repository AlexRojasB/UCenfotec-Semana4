//
//  CalculatorViewModel.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/8/21.
//

import Foundation
class CalculatorViewModel : ObservableObject {
    @Published var historyCalculations: [HistoryCalculation] = []
    @Published var displayText: String = "0"
    private var isDecimalPointAdded: Bool = false
    private var isANumberNeeded: Bool = false
    private var isAnOperationAdded: Bool = false
    private var pendingOperation: OperationEnum = OperationEnum.noOperation
    private var currentNumber: String = "0"
    private var previousNumber: Double = 0
    
    
    func InitialState() {
        displayText = "0"
        isDecimalPointAdded = false
        isANumberNeeded = false
        isAnOperationAdded = false
        pendingOperation = OperationEnum.noOperation
        currentNumber = "0"
        previousNumber = 0
    }
    
    func AddDecimal() {
        if !isDecimalPointAdded {
            var decimalText = "."
            if currentNumber == "" {
                decimalText = "0."
            }
            isDecimalPointAdded = true
            isANumberNeeded = true
            displayText = "\(displayText)\(decimalText)"
            currentNumber = "\(currentNumber)\(decimalText)"
        }
    }
    
    private func GetIndexOf(letter: String, data: String) -> Int {
        var index: Int = -1
            
            if let range: Range<String.Index> = data.range(of: letter) {
                 index = data.distance(from: data.startIndex, to: range.lowerBound)
            }
        return index
    }
    
    func AddOperation(operation: OperationEnum) {
        if !isANumberNeeded && !isAnOperationAdded {
            isAnOperationAdded = true
            isANumberNeeded = true
            pendingOperation = operation
            
        var operationText = " "
        switch operation {
        case .sum:
            operationText = "\(operationText)+ "
        case .substract:
            operationText = "\(operationText)- "
        case .multiply:
            operationText = "\(operationText)x "
        case .divide:
            operationText = "\(operationText)/ "
        default:
            operationText = ""
        }
            displayText = "\(displayText)\(operationText)"
            previousNumber = Double(currentNumber)!
            currentNumber = ""
            isDecimalPointAdded = false
        }
    }
    
    func GetUserInput(inputNumber: Int) {
        currentNumber = "\(currentNumber)\(inputNumber)"
        var previousText = displayText
        if previousText.count == 1 && previousText == "0" {
            previousText = ""
            currentNumber = "\(inputNumber)"
        }
        displayText = "\(previousText)\(inputNumber)"
        if isANumberNeeded {
            isANumberNeeded = false
        }
    }
    
    func ChangeSignNumber() {
        let originalValue = currentNumber
        if GetIndexOf(letter: "-", data: currentNumber) != -1 {
            currentNumber.remove(at: currentNumber.startIndex )
        }else {
            currentNumber = "-\(currentNumber)"
        }
        
        if let range = displayText.range(of: originalValue,
                                         options: [.backwards],
                   range: nil,
                   locale: nil) {
            let stringReplaced = displayText.replacingCharacters(in: range, with: currentNumber)
            displayText = stringReplaced
           }
    }
    
    func PerformPercentage() {
        var percentageNumber:Double = 0.0
        pendingOperation = OperationEnum.multiply
        if isAnOperationAdded {
            if currentNumber == "0" || currentNumber == "" {
                percentageNumber = 1
                displayText = "\(String(describing: displayText))1%"
            }else {
                percentageNumber = Double(currentNumber)!
            }
        } else {
            if currentNumber == "0" || currentNumber == "" {
                return
                
            }
            
            percentageNumber = Double(currentNumber)!
            isAnOperationAdded = true
            previousNumber = Double(currentNumber)!
            displayText = "\(displayText)%"
           
        }
        currentNumber = "\(Double(percentageNumber) / Double(100))"
        
        isDecimalPointAdded = true
        PerformOperation()
    }
    
    func PerformOperation() {
        if isAnOperationAdded && !isANumberNeeded {
                
        var result: Double = 0.0
        let currentNumberConverted = Double(currentNumber)!
        switch pendingOperation {
        case .sum:
            result = previousNumber + currentNumberConverted
        case .substract:
            result = previousNumber - currentNumberConverted
        case .multiply:
            result = previousNumber * currentNumberConverted
        case .divide:
            result = previousNumber / currentNumberConverted
        default:
            InitialState()
        }
            let currentDisplay = displayText
            var resultString = ""
            if GetIndexOf(letter: ".", data: currentDisplay) > 0 || isDecimalPointAdded {
                resultString = "\(result)"
            } else {
                resultString = "\(Int(result))"
            }
           historyCalculations.append(HistoryCalculation(operation: currentDisplay, result: resultString))
          
        }
       InitialState()
    }
    
}
