//
//  Price.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import Foundation

struct Price: Hashable, Decodable {
    let value: Double
    let currency: String

    var formatted: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = currency
        return formatter.string(from: NSNumber(value: value))!
    }
}
