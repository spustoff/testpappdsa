//
//  MainViewModel.swift
//  testapp
//
//  Created by Вячеслав on 8/13/23.
//

import SwiftUI

final class MainViewModel: ObservableObject {
    
    @Published var recommendations: [RecommendationsModel] = [
    
        RecommendationsModel(headerTitle: "Рекомендуем", itemsCount: 30, items: [
        
            ItemModel(image: "", title: "Coca-Cola", price: "35"),
            ItemModel(image: "", title: "Pepsi", price: "66"),
            ItemModel(image: "", title: "Lipton", price: "27"),
            ItemModel(image: "", title: "RedBull", price: "46"),
        ]),
        
        RecommendationsModel(headerTitle: "Сладкое Настроение", itemsCount: 30, items: [
        
            ItemModel(image: "", title: "Птичье молоко", price: "44"),
            ItemModel(image: "", title: "Конфеты", price: "67"),
            ItemModel(image: "", title: "Ириска", price: "11"),
            ItemModel(image: "", title: "Торт", price: "33"),
        ])
    ]
}

