//
//  CardView.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/3/8.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct CardView: View {
    let itemImage: String
    let itemName: String
    
    
    var body: some View {
        ZStack {
        Image(itemImage)
            .renderingMode(.original)
            .resizable()
            .frame(width: 150, height: 100)
            .cornerRadius(4)
            .overlay(Overlay(name: itemName))
        }
    }
}

struct Overlay: View {
    
    /// image
    let name: String
    
    /// gradient colors
    let colors: [Color] = [Color.gray.opacity(0.5), Color.gray.opacity(0)]
    
    /// gradient
    var gradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: colors),
                       startPoint: .topLeading, endPoint: .center)
    }
    
    /// body
    var body: some View {
        
            ZStack(alignment: .bottomLeading) {
                
                // create a rectagular gradient from bottomLeading edge to center edge
                Rectangle().fill(gradient).cornerRadius(80)
                
                // create text above the gradient
                Text(name).font(.system(size: 20)).bold().lineLimit(5).padding(10)
            }
            .foregroundColor(.white)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(itemImage: "01", itemName: "ANIMATION")
    }
}
