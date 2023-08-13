//
//  fruitHeaderView.swift
//  Fruits
//
//  Created by Akniyet Alibek on 12.08.2023.
//

import SwiftUI

struct fruitHeaderView: View {

    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false

    // MARK: -BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .topTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 6)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// MARK: - PREVIEW
struct fruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        fruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
