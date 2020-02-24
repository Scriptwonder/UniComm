//
//  detailView.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct detailView: View {
    
    var body: some View {
        VStack {
            HStack {
                Image("1917poster")
                VStack {
                    Text("1917")
                //title
                //director
                //cinematography
                //writing
                    //movie website
                //release
                //gross(US/Global)
                    //award if possible
                }
            }
            //should show rating()
            //then plot description
            //cast
            //story section(maybe?)
            //comment section(userself comment should be on the top)
            //review section(should be on the scrollBar with comment)
            
            //similar movielist
        }
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView()
    }
}
