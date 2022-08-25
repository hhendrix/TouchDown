//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Harry Lopez on 28/04/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        HStack{
            Button(action: {
                feedback.impactOccurred()
                shop.selectedProduct = nil
                shop.showingproduct = false
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}
// MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
        
    }
}
