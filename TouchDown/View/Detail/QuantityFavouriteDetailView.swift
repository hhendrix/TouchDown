//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by Harry Lopez on 28/04/22.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - PROPERTY
    @State private var  counter: Int = 0
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                feedback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
            
        }// HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}
// MARK: - PREVIEW
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
