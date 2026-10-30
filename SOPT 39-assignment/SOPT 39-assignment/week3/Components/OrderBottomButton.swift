//
//  OrderBottomButton.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct OrderBottomButton: View {
    var body: some View {
        HStack(spacing: 26) {
            Button {
            } label: {
                Image(systemName: "heart")
                    .font(.system(size: 24))
                    .foregroundStyle(.gray)
            }
            
            Button {
            } label: {
                Text("주문하기")
                    .font(.subhead2)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.starbucksgreen)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
        .padding(.horizontal, 28)
        .padding(.top, 18)
        .background(.white)
        .shadow(color: .black.opacity(0.08), radius: 8, y: -4)
    }
}

#Preview {
    OrderBottomButton()
}
