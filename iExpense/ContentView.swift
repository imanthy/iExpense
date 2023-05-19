//
//  ContentView.swift
//  iExpense
//
//  Created by Anthy Chen on 5/18/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    let expense = ExpenseItem(name: "test", type: "Personal", amount: 5.0)
                    expenses.items.append(expense)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    func removeItems(at offset: IndexSet) {
        expenses.items.remove(atOffsets: offset)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
