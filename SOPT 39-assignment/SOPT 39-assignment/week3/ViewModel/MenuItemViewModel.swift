//
//  MenuRowViewModel.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import Foundation
import Observation

@Observable
final class MenuItemViewModel {
    private(set) var items: [MenuItemModel] = [
        MenuItemModel(
            name: "아이스 카스텔라 고구마 라떼",
            englishName: "Iced Castella Sweet Potato Milk",
            price: 6900,
            imageName: "IMG_3899 1"
        ),
        MenuItemModel(
            name: "아이스 말차 글레이즈드 티 라떼",
            englishName: "Iced Malcha Glazed Tea Latte",
            price: 6700,
            imageName: "IMG_3897 1"
        ),
        MenuItemModel(
            name: "스타벅스 자몽 허니 에어로카노",
            englishName: "Starbucks GrapeFruit Honey Aerocano",
            price: 6100,
            imageName: "IMG_3898 1"
        )
    ]
}
