//
//  MyCalculatorApp.swift
//  MyCalculator
//
//  Created by Мирослав Пономаренко on 20.04.2025.
//

import SwiftUI

@main
struct MyCalculatorApp: App {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
