//
//  Product.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import Foundation

struct Product: Hashable, Decodable, Identifiable {
    let id: Int
    let title: String
    let imageUrl: URL
    let price: Price
    let description: String
    let isAvailable: Bool
    let variants: [ProductVariant]?
}
