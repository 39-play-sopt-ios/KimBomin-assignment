//
//  StoreSelectBarView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct StoreSelectBarView: View {
    var body: some View {
        HStack(spacing:0){
            HStack(spacing: 0){
                Text("성수역")
                    .font(.medium2)
                    .foregroundStyle(.white)
                Spacer()
                Image(.chevronBottomWhite)
            }
            .padding(.vertical, 4)
            .border(.black, width: 1)
            .overlay(alignment: .bottom) {
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.gray6B)
            }
            
            Spacer()
            
            Image(.buyEmpty)
                .resizable()
                .frame(width: 43, height: 42)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 9)
        .background(.backgroundBlack)
    }
}

#Preview {
    StoreSelectBarView()
}
