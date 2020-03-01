//
//  detailViewBook.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct detailViewBook: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("1917").font(.largeTitle)
                HStack {
                Image("01")
                .renderingMode(.original)
                .resizable()
                .frame(width: 140, height: 200)
                .cornerRadius(5)
                    VStack(alignment: .leading) {
                        Text("Author:")
                        Text("Genre:")
                        Text("Release:")
                        Text("Length:")
                        Text("ISBN:")
                    }
                    VStack {
                    Text("Add to list(with a img button)")
                    Text("Like(button to like)")
                        //should be two images, one add and one heart
                    }
                }
                Text("#This place will show the review score and the button to rate#").background(Color.pink)
                //a function with a parameter score that could show an animated five stars
                Text("Plot Description:")
                //plot
                Divider()
                HStack {
                    NavigationLink(destination:Comment()) {
                        Button("Comment") {
                            
                        }
                    }
                    NavigationLink(destination:Review()) {
                        Button("Review") {
                            
                        }
                    }
                }
                //now this will show a viewPager with the left being comment and right being review(span the whole width)
                
            }
            //similar booklist
        }.navigationBarTitle(Text("1917"),displayMode: .inline)
    }
}

struct detailViewBook_Previews: PreviewProvider {
    static var previews: some View {
        detailViewBook()
    }
}
