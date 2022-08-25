//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Harry Lopez on 26/04/22.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PROPERTY
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }// TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}
// MARK: - PREVIEW
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(.gray)
    }
}
