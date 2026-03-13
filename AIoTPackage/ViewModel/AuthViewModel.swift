//
//  AuthViewModel.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/3/13.
//

import SwiftUI
import Foundation
import Observation

@Observable
class AuthViewModel{
    var account: String = ""
    var password: String = ""
    
    var isLoggedIn: Bool = false
    var isLoading: Bool = false
    var errorMessage: String? = nil
    
    func login(){
        guard !account.isEmpty && !password.isEmpty else {
            errorMessage = "請輸入帳號和密碼"
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.isLoading = false
            
            if residents.firstIndex(where: {$0.account == self.account && $0.password == self.password}) != nil{
                self.isLoggedIn = true
                self.errorMessage = nil
            }else{
                self.isLoggedIn = false
                self.errorMessage = "帳號或密碼錯誤，請重試"
            }
        }
    }
    func logout(){
        isLoggedIn = false
        account = ""
        password = ""
    }
}
