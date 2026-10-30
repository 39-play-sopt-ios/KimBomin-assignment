//
//  MyMenuView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct MyMenuView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing: 0){
                Spacer()
                
                Image(.searchgray)
            }
            .padding(.horizontal,21)
            
            Text("Order")
                .font(.head4)
                .frame(maxWidth: .infinity, minHeight: 46, alignment: .leading)
                .padding(.horizontal, 18)
            
            HStack(spacing: 0){
                Text("전체 메뉴")
                    .font(.medium2)
                    .frame(width: 130, height: 46)
                    .foregroundStyle(.starbucksgreen)
                    .overlay(alignment: .bottom) {
                        Rectangle()
                            .frame(height: 4)
                            .foregroundStyle(.starbucksgreen)
                    }
                
                Text("나만의 메뉴")
                    .font(.subhead3)
                    .frame(width: 130, height: 46)
                    .foregroundStyle(.gray300)
                
                Spacer()
            }
            
            Divider()
            
            Text("등록된 나만의 메뉴가 없어요.\n즐겨 찾는 음료나 푸드를 나만의 메뉴로 등록하고\n빠르게 주문해 보세요.")
                .font(.body2)
                .foregroundStyle(.gray6B)
                .multilineTextAlignment(.center)
                .padding(.vertical,30)
            
            Spacer()
            
            StoreSelectBarView()
        }
    }
}
