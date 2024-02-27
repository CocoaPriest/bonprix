//
//  ProductBottomView.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 27.02.24.
//

import SwiftUI

struct ProductBottomView: View {
    var product: Product
    @Binding var selectedColor: String

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

                HStack {
                    ForEach(product.variants ?? [], id: \.self) { variant in
                        Button(action: {
                            self.selectedColor = variant.color
                        }) {
                            Text(variant.color)
                                .frame(maxWidth: .infinity)
                                .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
                                .foregroundColor(.white)
                                .background(.black)
                                .cornerRadius(5)
                        }
                    }
                }

                Text("Beschreibung")

                Text(product.description)
                    .font(.subheadline)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(uiColor: .secondarySystemBackground))
    }
}

#Preview {
    ProductBottomView(product: products[0], selectedColor: .constant("red"))
}
