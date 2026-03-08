//
//  PackageDetailView.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/2/24.
//

import SwiftUI

struct PackageDetail: View {
    let mainColor: Color = Color(hue: 186/360, saturation: 1, brightness: 78/100)
    let subColor: Color = Color(hue: 220/360, saturation: 16/100, brightness: 50/100)
    let package: PackageModel
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("包裹資訊")
                .foregroundStyle(subColor.opacity(0.5))
            Text("")
                .foregroundStyle(subColor.opacity(0.5))
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    PackageDetail(package: PackageModel(code: "A10003", timeText: "今天抵達", title: "新竹物流", manager: "XXX", cabinet: "A1", floor: "3", barCode: "1234"))
}

