//
//  MainModel.swift
//  testapp
//
//  Created by Вячеслав on 8/13/23.
//

import SwiftUI

struct RecommendationsModel: Identifiable {
    
    let id = UUID().uuidString
    
    let headerTitle: String
    let itemsCount: Int
    let items: [ItemModel]
}

struct ItemModel: Identifiable {
    
    let id = UUID().uuidString
    
    let image: String
    let title: String
    let price: String
}
