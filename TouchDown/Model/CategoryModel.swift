//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Harry Lopez on 27/04/22.
//

import Foundation

struct Category : Codable, Identifiable {
    let id: Int
    let name: String
    let image : String
}
