//
//  Calculator_SwiftUIApp.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/6/21.
//

import SwiftUI

@main
struct Calculator_SwiftUIApp: App {
    @StateObject var calculatorViewModel = CalculatorViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(calculatorViewModel)
        }
    }
}
