//
//  Homepage.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/16.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct Homepage: View {
    @State private var searchText = ""//for search
    
    
    var body: some View {
        NavigationView {
            Group {
            SearchBar(text: $searchText)
            
            UIScrollViewWrapper {
                HStack {
                    Spacer()
                    Button("Films") {
                        print("Lol")
                        //should display the film view
                    }
                    Spacer()
                    Button("Books") {
                        print("lol")
                        //should display the book view
                    }
                    Spacer()
                    Button("Music") {
                        //should display the music view
                    }
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width)
            }
            }
            .navigationBarTitle(Text("UniComm"), displayMode: .inline)
            .navigationBarItems(trailing:
                HStack {
                    Button("About") {
                        print("Lol")
                    }
                    Button("Lol") {
                        print("lol")
                    }
                }
            )
                
        }
        
        
    }
}

struct Films: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct Books: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Music: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
