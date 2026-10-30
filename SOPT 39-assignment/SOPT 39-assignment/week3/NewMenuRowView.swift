//
//  NewMenuRowView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct NewMenuRowView: View {
    let item: MenuItemModel
    var body: some View {
        HStack(spacing: 12){
            Image(item.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 0){
                Text(item.name)
                    .font(.subhead3)
                Text(item.englishName)
                    .font(.body2)
                    .foregroundStyle(.gray6B)
                    .padding(.bottom, 10)
                Text("\(item.price.formatted())원")
                    .font(.subhead3)
            }

            Spacer()
        }
        .padding(.horizontal, 21)
        .padding(.vertical, 14)
    }
}

#Preview {
    NewMenuRowView(item: .init(name: "아이스아메리카노", englishName: "iced", price: 20000, imageName: "beverage2"))
}
