//
//  MenuDetailView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct MenuDetailView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing:0){
                ZStack(alignment: .top){
                    Image(.IMG_3899_1)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                    
                    HStack(spacing: 0){
                        NavigationLink{
                            NewMenuView()
                        } label: {
                            ZStack {
                                Circle()
                                    .fill(.black.opacity(0.2))
                                    .frame(width: 39, height: 39)
                                
                                Image(.chevronLeftWhite)
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundStyle(.white)
                            }
                        }
                        
                        
                        Spacer()
                        
                        ZStack {
                            Circle()
                                .fill(.black.opacity(0.2))
                                .frame(width: 39, height: 39)
                            
                            Image(.shareWhite)
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundStyle(.white)
                        }
                    }
                    .padding(.horizontal, 21)
                    .padding(.vertical, 14)
                }
                .navigationBarBackButtonHidden(true)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 9) {
                        Text("아이스 카스텔라 고구마 라떼")
                            .font(.head2)
                        Text("NEW")
                            .font(.subhead2)
                            .foregroundStyle(.mainGreen)
                        Spacer()
                    }
                    Text("Iced Castella Sweet Potato Milk")
                        .font(.body2)
                        .padding(.bottom, 20)
                        .foregroundStyle(.navibargray)
                    
                    Text("가을에 잘 어울리는 군고구마를 한 잔에 담은 음료.\n포슬한 카스텔라, 쫀득한 펄이 어우러져 다채로운 식감을 즐길 수 있는 음료.")
                        .padding(.bottom, 32)
                        .font(.cap4)
                    
                    Text("6,900원")
                        .font(.head2)
                }
                .padding(21)
                
                Text("ICED ONLY")
                    .font(.subhead3)
                    .foregroundStyle(.blue)
                    .frame(width: 326, height: 36)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray200, lineWidth: 1)
                    )
                
                Text("*컬러 드리즐은 시간이 지날수록 번지는 현상이 있으나 음료 품질과는 무관하니 안심하고 드세요.")
                    .font(.cap4)
                    .foregroundStyle(.gray6B)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 21)
                    .frame(width: 333, height: 76)
                    .background(.backgroundWhite)
                
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
            .toolbar(.hidden, for: .tabBar)
            .navigationBarBackButtonHidden(true)
        }
    }
      
}

#Preview {
    MenuDetailView()
}
