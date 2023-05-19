//
//  Expenses.swift
//  iExpense
//
//  Created by Anthy Chen on 5/19/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
