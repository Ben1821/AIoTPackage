//
//  RootView.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/3/13.
//

import SwiftUI

struct RootView: View {
    @State var authViewModel = AuthViewModel()
    var body: some View {
        Group {
            if authViewModel.isLoggedIn {
                // 如果已登入，顯示主畫面
                HomeView(viewModel: authViewModel)
            } else {
                // 如果未登入，顯示登入畫面
                LogInView(viewModel: authViewModel)
            }
        }
        // 加入轉場動畫讓畫面切換更平滑
        .animation(.easeInOut, value: authViewModel.isLoggedIn)
    }
}

#Preview {
    RootView()
}
