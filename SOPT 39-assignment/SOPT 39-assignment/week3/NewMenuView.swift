//
//  NewMenuView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct NewMenuView: View {
    @State private(set) var viewModel = MenuItemViewModel()
    var body: some View {
        NavigationStack{
            VStack(spacing: 0){
                HStack(spacing: 0){
                    NavigationLink{
                        OrderView()
                    } label: {
                        Image(.chevronLeftGrey)
                    }
                    Spacer()
                    Image(.searchgray)
                }
                .padding(.horizontal,21)
                .padding(.vertical, 14)
                
                Text("New")
                    .font(.head4)
                    .frame(maxWidth: .infinity, minHeight: 46, alignment: .leading)
                    .padding(.horizontal, 18)
                    .padding(.bottom, 28)
                
                List(viewModel.items){ item in
                    NavigationLink{
                        MenuDetailView()
                    } label:{
                        NewMenuRowView(item: item)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(
                        EdgeInsets(
                            top: 0, leading: 0, bottom: 0, trailing: 0)
                    )
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .background(.white)
                
                StoreSelectBarView()
            }
            .navigationBarBackButtonHidden(true)
        }
        
    }
    
    
}
#Preview {
    NewMenuView()
}
