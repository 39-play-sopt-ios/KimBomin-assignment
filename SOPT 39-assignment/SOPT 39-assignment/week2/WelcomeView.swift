//
//  WelcomeView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/16/26.
//

import SwiftUI

struct WelcomeView: View {
    let nickname: String
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Image(.starbuckslogos)
                .padding(.top, 69)
            
            Text("\(nickname)님\n가입을 환영합니다!")
                .font(.head2)
                .foregroundStyle(.white)
                .padding(.top, 93)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button{
            } label: {
                Text("메인으로")
                    .font(.subhead1)
                    .foregroundStyle(.darkGreen)
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
        }
        .padding(.horizontal,30)
        .background(.darkGreen)
    }
}

#Preview {
    WelcomeView(nickname: "상엽")
}
