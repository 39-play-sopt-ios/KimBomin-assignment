//
//  OrderView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct OrderView: View {
    @State private var viewModel = MenuCategoryViewModel()
    var body: some View {
        NavigationStack{
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
                
                HStack(spacing: 0){
                    HStack(spacing: 28){
                        Text("음료")
                        Text("푸드")
                            .foregroundStyle(.gray6B)
                        Text("상품")
                            .foregroundStyle(.gray6B)
                    }
                    .font(.medium2)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, minHeight: 54)
                .padding(.horizontal, 42)
                
                Divider()
                    .padding(.bottom, 26)
                
                List(viewModel.categories){ category in
                    NavigationLink{
                       NewMenuView()
                    } label: {
                        MenuCategoryRowView(item: category)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(
                        EdgeInsets(
                            top: 0, leading: 0, bottom: 16, trailing: 16)
                    )
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .background(.white)
                
                StoreSelectBarView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    OrderView()
}
