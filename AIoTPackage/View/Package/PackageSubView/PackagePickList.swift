//
//  ToBePicked.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/2/22.
//

import SwiftUI

struct PackagePickList: View{
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Spacer()
                        .frame(height: 20)
                    ForEach(packageModels){ package in
                        PackageRow(package: package)
                    }
                }
            }
        }
    }
}

#Preview {
    PackagePickList()
}
