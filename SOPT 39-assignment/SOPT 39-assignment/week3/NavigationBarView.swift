//
//  NavigationBarView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

struct NavigationBarView: View {
    @Binding var selectedTab: Tab
    var body: some View {
        HStack(spacing: 0){
            VStack(spacing: 0){
                Image(selectedTab == .home ? .homeGreen : .homeGrey)
                Text("Home")
                    .font(.cap1)
                    .foregroundStyle(selectedTab == .home ? .starbucksgreen : .navibargray)
            }
            .onTapGesture { selectedTab = .home }
            Spacer()
            VStack(spacing: 0){
                Image(selectedTab == .pay ? .payGreen : .payGrey)
                Text("Pay")
                    .font(.cap1)
                    .foregroundStyle(selectedTab == .pay ? .starbucksgreen : .navibargray)
            }
            .onTapGesture { selectedTab = .pay }
            Spacer()
            VStack(spacing: 0){
                Image(selectedTab == .order ? .orderGreen : .orderGrey)
                Text("Order")
                    .font(.cap1)
                    .foregroundStyle(selectedTab == .order ? .starbucksgreen : .navibargray)
            }
            .onTapGesture { selectedTab = .order }
            Spacer()
            VStack(spacing: 0){
                Image(selectedTab == .gift ? .giftGreen : .giftGrey)
                Text("Gift")
                    .font(.cap1)
                    .foregroundStyle(selectedTab == .gift ? .starbucksgreen : .navibargray)
            }
            .onTapGesture { selectedTab = .gift }
            Spacer()
            VStack(spacing: 0){
                Image(selectedTab == .other ? .otherGreen : .otherGrey)
                Text("Other")
                    .font(.cap1)
                    .foregroundStyle(selectedTab == .other ? .starbucksgreen : .navibargray)
            }
            .onTapGesture { selectedTab = .other }
        }
        .padding(.horizontal, 16)
        .padding(.vertical,7)

    }
}

#Preview {
    NavigationBarView(selectedTab: .constant(.order))
}
