//
//  TopBarDetailView.swift
//  TouchDown
//
//  Created by Harry Lopez on 28/04/22.
//

import SwiftUI

struct TopBarDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop:Shop
    @State private var isAnimating : Bool = true
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            // PHOTO
        })// HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}
// MARK: - PREVIEW
struct TopBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarDetailView()
            .environmentObject(Shop() )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
