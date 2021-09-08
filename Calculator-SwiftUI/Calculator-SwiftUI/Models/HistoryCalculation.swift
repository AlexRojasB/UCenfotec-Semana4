//
//  HistoryCalculation.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/7/21.
//


import Foundation

struct HistoryCalculation : Identifiable {
    let id =  UUID()
    var operation: String
    var result: String
    let historyDateTime = Date()
}
