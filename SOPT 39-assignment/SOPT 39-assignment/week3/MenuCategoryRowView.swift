//
//  MenuCategoryRowView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct MenuCategoryRowView: View {
    let item: MenuCategoryModel
    var body: some View {
        HStack(spacing: 21){
            Image(item.imageName)
                .resizable()
                .frame(width: 61, height: 61)
            
            Text(item.name)
                .font(.subhead3)
            
            Spacer()
        }
        .padding(.horizontal, 28)
    }
}

#Preview {
    MenuCategoryRowView(item: .init(name: "아무ㄴ거나" , imageName: "beverage2"))
}
