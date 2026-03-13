//
//  ContentView.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/2/21.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView {
            Tab("首頁", systemImage: "house") {
                EmptyView()
            }
            Tab("安防", systemImage: "person.badge.shield.checkmark.fill") {
                EmptyView()
            }
            Tab("包裹", systemImage: "shippingbox.fill") {
                PackageView()
            }
            Tab("個人", systemImage: "person") {
                EmptyView()
            }
        }
        .tint(Colors.mainColor)
    }
}

#Preview {
    ContentView()
}
