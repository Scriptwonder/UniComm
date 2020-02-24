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
    @State private var films = 1
    @State private var books = 0
    @State private var music = 0
    
    var body: some View {
        NavigationView {
            Group {
            SearchBar(text: $searchText)
            
            UIScrollViewWrapper {
                HStack {
                    Spacer()
                    Button("Films") {
                        self.films = 1
                        self.books = 0
                        self.music = 0
                        //should display the film view
                    }
                    Spacer()
                    Button("Books") {
                        self.films = 0
                        self.books = 1
                        self.music = 0
                        //should display the book view
                    }
                    Spacer()
                    Button("Music") {
                        self.films = 0
                        self.books = 0
                        self.music = 1
                        //should display the music view
                    }
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width)
                
                if (self.films == 1) {
                    Films()
                } else if (self.books == 1) {
                    Books()
                } else if (self.music == 1) {
                    Music()
                }
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
        //NavigationView {
        NavigationLink(destination: detailView()) {
            VStack(alignment: .center, spacing: 20) {
                Image("1917poster")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 60, height: 100)
                    .cornerRadius(4)
                Text("1917")
                    .font(.custom("aa", size: 10))
            }
            VStack(alignment: .center, spacing: 20) {
                Image("parasite")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 60, height: 100)
                    .cornerRadius(4)
                Text("Parasite")
                    .font(.custom("aa", size: 10))
            }
            VStack(alignment: .center, spacing: 20) {
                Image("little")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 60, height: 100)
                    .cornerRadius(4)
                Text("Little Women")
                    .font(.custom("aa", size: 10))
            }
        }.padding([.top, .horizontal])
            /*
             NavigationLink(destination: detailView()) {
                Image("1917poster")
                .renderingMode(.original)
                .resizable()
                .frame(width: 60, height: 100)
                .cornerRadius(4)
            }
        }*/
        
       
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
