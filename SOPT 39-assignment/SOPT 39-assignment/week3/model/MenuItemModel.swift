//
//  MenuRowView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import Foundation

struct MenuItemModel: Identifiable {
    let id = UUID()
    let name: String
    let englishName: String
    let price: Int
    let imageName: String
}
