//
//  ContentView.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/2/21.
//

import SwiftUI
struct HomeView: View {
    @Bindable var viewModel: AuthViewModel
    var body: some View {
        TabView {
            Tab("首頁", systemImage: "house") {
                if viewModel.isLoggedIn{
                    VStack(spacing: 20) {
                        Text("登入成功！")
                            .font(.title)
                        Text("你的 Account 是: \(viewModel.account)")
                        
                        Button("登出") {
                            viewModel.logout()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                    }
                }
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
    HomeView(viewModel: AuthViewModel())
}
