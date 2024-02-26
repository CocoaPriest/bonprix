//
//  ProductDetail.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import SwiftUI

struct ProductDetail: View {
    var product: Product

    var body: some View {
        Text(product.title)
    }
}

#Preview {
    ProductDetail(product: products[0])
}
