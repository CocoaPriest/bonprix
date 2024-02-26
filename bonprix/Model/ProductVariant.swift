//
//  ProductVariant.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import Foundation

struct ProductVariant: Hashable, Decodable, Identifiable {
    let id: Int
    let color: String
    let imageUrl: URL
    let isAvailable: Bool
}
