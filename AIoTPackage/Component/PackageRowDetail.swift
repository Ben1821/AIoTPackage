//
//  PackageDetailCardView.swift
//  AIoTPackage
//
//  Created by 葉韋坪 on 2026/2/26.
//

import SwiftUI

struct PackageRowDetail: View {
    let package: PackageModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .top){
                VStack(alignment: .leading, spacing: 0){
                    Text("包裹ID")
                        .foregroundStyle(Colors.subColor)
                        .font(.system(size: 15))
                    Text("#\(package.code)")
                        .foregroundStyle(Colors.mainColor)
                        .font(.title3).fontWeight(.semibold)
                }
                Spacer()
                HStack(spacing: 4){
                    Circle()
                        .frame(width: 8)
                    Text("待領取")
                }
                .foregroundStyle(Colors.mainColor)
                .padding(8)
                .background{
                    Capsule()
                        .foregroundStyle(Colors.mainColor.opacity(0.1))
                }
                
            }
            Divider()
                .padding(.vertical, 8)
            
            VStack{
                HStack(alignment: .top, spacing: 16) {
                    
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(Colors.subColor.opacity(0.5))
                        .frame(width: 56, height: 56)
                        .overlay{
                            Image(systemName: "cube.box.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                        }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text(package.title)
                            .font(.title3).bold()
                            .foregroundColor(Colors.mainColor)
                        
                        Text("管理員：\(package.manager)")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(Colors.subColor.opacity(0.5))
                        
                        
                    }
                    Spacer()
                }
                .padding(.bottom, 8)
                HStack{
                    VStack(alignment: .leading){
                        Text("貨物位置")
                            .foregroundColor(Colors.subColor.opacity(0.5))
                        Label("\(package.cabinet) - 第\(package.floor)層", systemImage: "cabinet.fill")
                            .foregroundColor(Colors.mainColor)
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("抵達時間")
                            .foregroundColor(Colors.subColor.opacity(0.5))
                        Text(package.timeText)
                            .foregroundStyle(Colors.subColor)
                            .font(.title3)
                    }
                    Spacer()
                }
            }
            Button {
                // action
            } label: {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Colors.mainColor)
                    .frame(maxWidth: .infinity, maxHeight: 56)
                    .overlay{
                        Label("取貨", systemImage: "barcode.viewfinder")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
            }
            .padding(.top)
        }
        .padding(.horizontal, 24)
        .padding(.vertical)
        .background(
            RoundedRectangle(cornerRadius: 26, style: .continuous)
                .fill(.white)
                .shadow(color: Color.black.opacity(0.16),
                        radius: 10, x: 0, y: 2)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    PackageRowDetail(package: PackageModel(code: "A10003", timeText: "今天抵達", title: "新竹物流", manager: "XXX", cabinet: "A1", floor: "3", barCode: "1234"))
}
