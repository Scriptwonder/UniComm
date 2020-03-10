//
//  MainPage.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/3/8.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct MainPage: View {
    @State private var searchText = ""//for search
    @State private var zone = 1
    @State private var plaza = 0
    
    var body: some View {
        NavigationView {
        Group {
            SearchBar(text: $searchText)
            UIScrollViewWrapper {
                HStack {
                    Spacer()
                    Button("Zone") {
                        self.zone = 1
                        self.plaza = 0
                        //should display the film view
                    }
                    Spacer()
                    Button("Plaza") {
                        self.zone = 0
                        self.plaza = 1
                        //should display the book view
                    }
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width)
            }
            if (self.zone == 1) {
                Zone()
            } else if (self.plaza == 1) {
                Plaza()
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

struct Zone: View {
    var body: some View {
        Text("Hi this is your Zone")
    }
}

struct Plaza: View {
    var body: some View {
        Text("Hi Welcome to Plaza")
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
