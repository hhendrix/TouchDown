//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Harry Lopez on 28/04/22.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//VSATCK
        .foregroundColor(.white)
    }
}
// MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
