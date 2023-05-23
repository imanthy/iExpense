//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Anthy Chen on 5/19/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
