//
//  FruitModel.swift
//  Fruits
//
//  Created by Akniyet Alibek on 11.08.2023.
//

import SwiftUI

struct Fruit: Identifiable {

    // MARK: - FRUITS DATA MODEL
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
