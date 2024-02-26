//
//  ProductOverview.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import SwiftUI

struct ProductOverview: View {

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(products) { product in
                        NavigationLink(value: product) {
                            ProductCell(product: product)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .navigationDestination(for: Product.self) { product in
                            ProductDetail(product: product)
                        }
                    }
                }
            }
            .navigationTitle("Produktübersicht")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.init(uiColor: .secondarySystemBackground))
        }
    }
}

#Preview {
    ProductOverview()
}
