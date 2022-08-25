//
//  Shop.swift
//  TouchDown
//
//  Created by Harry Lopez on 28/04/22.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingproduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
