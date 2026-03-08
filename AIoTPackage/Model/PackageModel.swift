//
//  PackageModel.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/2/22.
//

import Foundation
struct PackageModel: Identifiable, Hashable {
    var id = UUID()
    let code: String
    let timeText: String
    let title: String
    let manager: String
    let cabinet: String
    let floor: String
    let barCode: String
}

var packageModels: [PackageModel] = [
    PackageModel(code: "A10003", timeText: "今天抵達", title: "新竹物流", manager: "XXX", cabinet: "A1", floor: "3", barCode: "692880401114"),
    PackageModel(code: "A10002", timeText: "1天前抵達", title: "FedEx", manager: "XXX", cabinet: "A1", floor: "2", barCode: "5678"),
    PackageModel(code: "A10001", timeText: "2天前抵達", title: "黑貓宅急便", manager: "XXX", cabinet: "A1", floor: "1", barCode: "9012")
]


