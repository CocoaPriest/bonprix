//
//  DataManager.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import Foundation

var products: [Product] = load_products()

func load_products() -> [Product] {
    let data: Data

    guard let file = Bundle.main.url(forResource: "products", withExtension: "json")
    else {
        fatalError("No file `\(products)` found.")
    }

    do {
        data = try Data(contentsOf: file)

        let decoded = JSONDecoder()
        return try decoded.decode([Product].self, from: data)
    } catch {
        fatalError("Can't decode json file.")
    }
}

