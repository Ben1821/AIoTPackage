//
//  Residents.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/3/13.
//

import Foundation

struct Resident: Identifiable, Hashable {
    var id = UUID()
    let account: String
    let password: String
}

var residents: [Resident] = [
    Resident(account: "123457890", password: "1234567890"),
    Resident(account: "098765432", password: "0987654321"),
    Resident(account: "112233445", password: "1122334455")
]
