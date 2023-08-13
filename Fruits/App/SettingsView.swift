//
//  SettingsView.swift
//  Fruits
//
//  Created by Akniyet Alibek on 13.08.2023.
//

import SwiftUI

struct SettingsView: View {

    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false

    // MARK: - BODY

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ){
                 
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. Fruits are sources of many essentials nutrients")
                                .font(.footnote)
                        }
                    }

                    // MARK: - SECTION 2

                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("For restart press this toggle button")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnBoarding) {
//                            if isOnBoarding {
//                                Text("Restarted".uppercased())
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color.green)
//                            } else {
//                                Text("Restart".uppercased())
//                                fontWeight(.bold)
//                                    .foregroundColor(Color.secondary)
//                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }

                    // MARK: - SECTION 3
                    GroupBox(label:
                                SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {

                        SettingsRowView(name: "Developer", content: "Akniyet")
                        SettingsRowView(name: "Designer", content: "Akniyet")
                        SettingsRowView(name: "ompatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "swiftUI", linkDestination: "swiftUI.com")
                        SettingsRowView(name: "Twitter", linkLabel: "xxx", linkDestination: "twitter.com")
                        SettingsRowView(name: "swiftUI", content: "2.0")
                        SettingsRowView(name: "Verion", content: "1.0")
                    }

                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    )
                .padding()
            } //: SCROLL
        } //: NAV
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
