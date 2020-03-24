//
//  Category.swift
//  ProfileUI
//
//  Created by Diana Zheng on 3/2/20.
//  Copyright © 2020 CIS454. All rights reserved.
//

import SwiftUI

struct Profile: Hashable, Codable, Identifiable {
    var id:Int
    var imageName:String
    var categoryName:CategoryName
    
    enum CategoryName: String, CaseIterable, Codable, Hashable{
        case genre = "genre"
        case review = "review"
    }
}
