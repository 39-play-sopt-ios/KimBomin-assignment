//
//  MainTabView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import SwiftUI

enum Tab{
    case home
    case pay
    case order
    case gift
    case other
}

struct MainTabView: View {
    @State var selectedTab : Tab = .order
    var body: some View {
            VStack{
                switch selectedTab {
                case .home:
                    HomeView()
                case .pay:
                    PayView()
                case .order:
                    OrderView()
                case .gift:
                    GiftView()
                case .other:
                    OtherView()
                }
                NavigationBarView(selectedTab: $selectedTab)
            }
    }
}
