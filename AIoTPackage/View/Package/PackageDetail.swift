//
//  PackageDetailView.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/2/24.
//

import SwiftUI

struct PackageDetail: View {
    let package: PackageModel
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("包裹資訊")
                .foregroundStyle(Colors.subColor.opacity(0.5))
            Text("")
                .foregroundStyle(Colors.subColor.opacity(0.5))
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    PackageDetail(package: PackageModel(code: "A10003", timeText: "今天抵達", title: "新竹物流", manager: "XXX", cabinet: "A1", floor: "3", barCode: "1234"))
}

