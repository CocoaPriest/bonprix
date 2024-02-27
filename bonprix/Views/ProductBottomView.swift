//
//  ProductBottomView.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 27.02.24.
//

import SwiftUI

struct ProductBottomView: View {
    var product: Product

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(product.price.formatted)
                    .font(.title)

                Text("inkl. MwSw., zzgl. Versandkosten")
                    .font(.subheadline)
            }
            .padding()

            VStack(alignment: .leading) {
                Text("Farbe")

                // TODO: variants
                HStack {
                    Button("btn 1") {

                    }
                    Button("btn 2") {

                    }
                    Button("btn 3") {

                    }
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(uiColor: .secondarySystemBackground))
    }
}

#Preview {
    ProductBottomView(product: products[0])
}
