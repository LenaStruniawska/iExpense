//
//  Expenses.swift
//  IExpenseProjekt
//
//  Created by Slawek on 17/03/2022.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
    didSet {
        let encoder = JSONEncoder()
        
        if let encoded = try? encoder.encode(items) {
            UserDefaults.standard.set(encoded, forKey: "Items")
        }
    }
}
    
    
}
    

