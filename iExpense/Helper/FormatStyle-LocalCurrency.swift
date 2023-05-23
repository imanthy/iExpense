//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Anthy Chen on 5/23/23.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currency?.identifier ?? "USD")
    }
}
