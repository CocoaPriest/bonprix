//
//  ProductCell.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import SwiftUI

struct ProductCell: View {
    var product: Product

    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: product.imageUrl) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .scaledToFit()
            .frame(height: 250)

            VStack(alignment: .leading, spacing: 10) {
                Text(product.title)
                    .lineLimit(2, reservesSpace: true)

                Text(product.price.formatted)
            }
            .padding()
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ProductCell(product: products[1])
}
