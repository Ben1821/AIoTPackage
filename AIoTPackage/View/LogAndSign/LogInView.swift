//
//  LogIn.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/3/13.
//

import SwiftUI

struct LogInView: View {
    @Bindable var viewModel: AuthViewModel
    var body: some View {
        VStack(spacing: 24){
            // 可以放 icon
            // Image("icon")
            
            TextField("輸入帳號...", text: $viewModel.account)
                .frame(maxWidth: .infinity, minHeight: 50)
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Colors.subColor.opacity(0.3))
                )
            TextField("輸入密碼...", text: $viewModel.password)
                .frame(maxWidth: .infinity, minHeight: 50)
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Colors.subColor.opacity(0.3))
                )
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }
            Button{
                viewModel.login()
            }label: {
                ZStack {
                    if viewModel.isLoading {
                        ProgressView()
                            .tint(.white)
                    } else {
                        Text("登入")
                            .fontWeight(.bold)
                    }
                }
                .font(.title2)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Colors.mainColor)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .disabled(viewModel.isLoading)
            Button{
                
            }label: {
                Text("註冊帳號")
                    .foregroundStyle(Colors.subColor)
            }
        }
        .padding()
    }
}

#Preview {
    LogInView(viewModel: AuthViewModel())
}
