//
//  ProductDetail.swift
//  bonprix
//
//  Created by Konstantin Gonikman on 26.02.24.
//

import SwiftUI

struct ProductDetail: View {
    var product: Product
    @State private var selectedColor: String = ""

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

                    ProductBottomView(product: product, selectedColor: $selectedColor)
                        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 15, topTrailingRadius: 20))
                        .offset(y: -25)
                }
            }

            Button(action: {}) {
                Text("In die Einkaufstasche")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(convertColorNameToColor(selectedColor))
                    .cornerRadius(10)

            }
            .padding()
            .background(Color(uiColor: .secondarySystemBackground))
        }
    }

    func convertColorNameToColor(_ colorName: String) -> Color {
        switch colorName {
        case "grau meliert":
            return .gray
        case "schwarz":
            return .black
        case "kastanienbraun":
            return .brown
        default:
            return .black // Default color
        }
    }
}

#Preview {
    ProductDetail(product: products[0])
}
