//
//  MenuCategoryViewModel.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/30/26.
//

import Foundation
import Observation

@Observable
final class MenuCategoryViewModel {
    private(set) var categories: [MenuCategoryModel] = [
        MenuCategoryModel(name: "NEW", imageName: "bevarage1"),
        MenuCategoryModel(name: "추천", imageName: "beverage2"),
        MenuCategoryModel(name: "콜드 브루", imageName: "beverage3"),
        MenuCategoryModel(name: "블론드", imageName: "beverage4"),
        MenuCategoryModel(name: "에스프레소", imageName: "beverage5")
    ]
}
