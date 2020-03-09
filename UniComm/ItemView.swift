//
//  Item.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/3/8.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct ItemView: View {
    let itemImage: String
    let itemName: String
    
    var body: some View {
        VStack {
        Image(itemImage)
            .renderingMode(.original)
            .resizable()
            .frame(width: 80, height: 120)
            .cornerRadius(4)
        Text(itemName)
            .font(.custom("aa", size: 10))
        }
    }
                
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(itemImage:"01",itemName:"01")
    }
}
