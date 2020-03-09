//
//  addContent.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct addContent: View {
    var body: some View {
        VStack {
            HStack {
                Text("Image Here")
                Spacer()
                Text("TBD")
            }.padding(50)
            .background(Color.green)
            .frame(width: UIScreen.main.bounds.width)
            HStack {
                Text("Image Here")
                Spacer()
                Text("Record Thoughts")
            }.padding(50)
            .background(Color.yellow)
            .frame(width: UIScreen.main.bounds.width)
            HStack {
                Text("Image Here")
                Spacer()
                Text("Post A Review")
            }.padding(50)
            .background(Color.purple)
            .frame(width: UIScreen.main.bounds.width)
            HStack {
                Text("Image Here")
                Spacer()
                Text("Create A List")
            }.padding(50)
            .background(Color.red)
            .frame(width: UIScreen.main.bounds.width)
        }.frame(maxHeight:.infinity)
    }
}

struct addContent_Previews: PreviewProvider {
    static var previews: some View {
        addContent()
    }
}
