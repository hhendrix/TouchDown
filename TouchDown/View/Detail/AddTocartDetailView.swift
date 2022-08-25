//
//  AddTocartDetailView.swift
//  TouchDown
//
//  Created by Harry Lopez on 28/04/22.
//

import SwiftUI

struct AddTocartDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop:Shop
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
        
    }
}
// MARK: - PREVIEW
struct AddTocartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddTocartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
