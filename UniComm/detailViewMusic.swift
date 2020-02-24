//
//  detailViewMusic.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct detailViewMusic: View {
    var body: some View {
        VStack {
            HStack {
                Image("1917poster")
                VStack {
                    Text("1917")
                //title
                //date
                //website
                //award if possible
                }
            }
            //should show rating()
            //then track list
            //comment section(userself comment should be on the top)
            //similar playlist
        }
    }
}

struct detailViewMusic_Previews: PreviewProvider {
    static var previews: some View {
        detailViewMusic()
    }
}
