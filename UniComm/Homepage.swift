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
    //@State var bar = 1
    
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
            }
            if (self.films == 1) {
                Films()
                //Bar()
                //BarII()
                
            } else if (self.books == 1) {
                Books()
                //Bar()
            } else if (self.music == 1) {
                Music()
                //Bar()
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
        //Group {
            GridStack(rows: 4, columns: 4) { row, col in
                NavigationLink(destination: detailViewFilm()) {
                    VStack {
                Image("0\((row * 4 + col)%3+1)")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 60, height: 100)
                    .cornerRadius(4)
                Text("\(row*4 + col)")
                    .font(.custom("aa", size: 10))
                    }
                }
            }.padding([.bottom, .horizontal])
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

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }

    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

