//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Akniyet Alibek on 13.08.2023.
//

import SwiftUI

struct SettingsLabelView: View {

    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String

    // MARK: - BODY

    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Ftuites", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
