//
//  ProfileRow.swift
//  Profile UI
//
//  Created by Zhenghao Zeng on 2/28/20.
//  Copyright © 2020 CIS454. All rights reserved.
//

import SwiftUI

struct ProfileItems: View {
    
    var categoryItem:Profile
    
var body: some View {
    Image(categoryItem.imageName)
        .resizable()
        .renderingMode(.original)
        .aspectRatio(contentMode: .fit)
        .frame(width: 150, height: 120)
        .cornerRadius(15)
        .shadow(radius: 10)
    }
}

struct ProfileItems_Previews: PreviewProvider {
    static var previews: some View {
        ProfileItems(categoryItem: profileData[2])
    }
}
