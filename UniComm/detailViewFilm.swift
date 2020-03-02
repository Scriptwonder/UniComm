//
//  detailView.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct detailViewFilm: View {
    @State private var comment = 1
    @State private var review = 0
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
                        Text("Genre:")
                        Text("Release:")
                        Text("Area:")
                        Text("Language:")
                        Text("Length:")
                        Text("IMDB Link:")
                    }
                    VStack {
                    Text("Add to list(with a img button)")
                    Text("Like(button to like)")
                        //should be two images, one add and one heart
                    }
                }
                Text("#This place will show the review score#").background(Color.pink)
                //a function with a parameter score that could show an animated five stars
                //put award here if possible
                Text("Plot Description:")
                //plot
                Divider()
                Text("Cast:")
                Text("Director:")
                Text("Cinematography:")
                Text("Actor:")
                //Divider()
                HStack {
                    NavigationLink(destination:Comment()) {
                        Button("Comment") {
                            self.comment = 1
                            self.review = 0
                        }
                    }
                    NavigationLink(destination:Review()) {
                        Button("Review") {
                            self.review = 1
                            self.comment = 0
                        }
                    }
                }
                //now this will show a viewPager with the left being comment and right being review(span the whole width)
            }
            //story section(maybe?)
            //similar movielist
        }.navigationBarTitle(Text("1917"),displayMode: .inline)
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailViewFilm()
    }
}
