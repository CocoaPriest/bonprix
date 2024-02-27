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
        VStack {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                
                ScrollView {
                    AsyncImage(url: product.imageUrl) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .scaledToFit()

                    ProductBottomView(product: product)
                        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 15, topTrailingRadius: 20))
                        .offset(y: -25)
                }
            }

            Button(action: {}) {
                Text("In die Einkaufstasche")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)

            }
            .padding()
            .background(Color(uiColor: .secondarySystemBackground))
        }

    }
}

#Preview {
    ProductDetail(product: products[0])
}
