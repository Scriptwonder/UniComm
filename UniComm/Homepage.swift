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
    @State private var films = 0
    @State private var books = 1
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
            }.frame(height:20)
            if (self.films == 1) {
                Films()
            } else if (self.books == 1) {
                Books()
            } else if (self.music == 1) {
                Music()
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
            
        }.frame(alignment: .leading)
    }
}

struct Films: View {
    var body: some View {
        //Group {
        ScrollView{
        VStack(alignment: .leading) {
            Text("March's Editorial")
            ScrollView (.horizontal) {
                 HStack {
                     //contents
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    
                 }
            }.frame(height: 100)
                .padding()

            Text("Latest")
            GridStack(rows: 2, columns: 4) { row, col in
                NavigationLink(destination: detailViewFilm()) {
                    VStack {
                        ItemView(itemImage: "0\((row * 4 + col)%3+1)", itemName: "\(row*4 + col)")
                    }
                }
            }.padding([.bottom, .horizontal])
            Text("Upcoming")
            GridStack(rows: 2, columns: 4) { row, col in
                NavigationLink(destination: detailViewFilm()) {
                    VStack {
                        ItemView(itemImage: "0\((row * 4 + col)%3+1)", itemName: "\(row*4 + col)")
                    }
                }
            }.padding([.bottom, .horizontal])
            Text("Genre")
            ScrollView (.horizontal) {
                 HStack {
                     //contents
                    CardView(itemImage: "02", itemName: "ACTION")
                    CardView(itemImage: "02", itemName: "ADVENTURE")
                    CardView(itemImage: "02", itemName: "ANIMATION")
                    CardView(itemImage: "02", itemName: "COMEDY")
                    CardView(itemImage: "02", itemName: "DRAMA")
                    CardView(itemImage: "02", itemName: "ROMANCE")
                    CardView(itemImage: "02", itemName: "SCI-FI")
                    CardView(itemImage: "02", itemName: "THRILLER")
                    
                 }
            }.frame(height: 100)
                .padding()
            
            Text("Special")
            ScrollView (.horizontal) {
                 HStack {
                     //contents
                    CardView(itemImage: "02", itemName: "BERLIN 2020")
                    CardView(itemImage: "02", itemName: "OSCARS 2020")
                    CardView(itemImage: "02", itemName: "AAA")
                    CardView(itemImage: "02", itemName: "AAA")
                    CardView(itemImage: "02", itemName: "AAA")
                    
                 }
            }.frame(height: 100)
                .padding()
        }
        }.frame(maxHeight: .infinity)
    }
}

struct Books: View {
    var body: some View {
        ScrollView {
            VStack(alignment:.leading) {
            Text("March's Editorial")
            ScrollView (.horizontal) {
                    HStack {
                         //contents
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    
                    }
            }.frame(height: 100)
                .padding()
            Text("New Books")
            GridStack(rows: 2, columns: 4) { row, col in
                NavigationLink(destination: detailViewFilm()) {
                    VStack {
                        ItemView(itemImage: "0\((row * 4 + col)%3+1)", itemName: "\(row*4 + col)")
                    }
                }
            }.padding([.bottom, .horizontal])
            Text("Genre Top")
            ScrollView (.horizontal) {
                 HStack {
                     //contents
                    CardView(itemImage: "02", itemName: "LITERATURE")
                    CardView(itemImage: "02", itemName: "POETRY")
                    CardView(itemImage: "02", itemName: "NOVEL")
                    CardView(itemImage: "02", itemName: "DRAMA")
                    CardView(itemImage: "02", itemName: "BIOGRAPHY")
                    CardView(itemImage: "02", itemName: "HISTORY")
                    CardView(itemImage: "02", itemName: "ART")
                 }
            }.frame(height: 100)
                .padding()
            Text("Special")
            ScrollView (.horizontal) {
                 HStack {
                     //contents
                    CardView(itemImage: "02", itemName: "2020")
                    CardView(itemImage: "02", itemName: "2020")
                    CardView(itemImage: "02", itemName: "AAA")
                    CardView(itemImage: "02", itemName: "AAA")
                    CardView(itemImage: "02", itemName: "AAA")
                    
                 }
            }.frame(height: 100)
                .padding()
        }
        }
    }
}

struct Music: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
            Text("March's Editorial")
            ScrollView (.horizontal) {
                    HStack {
                         //contents
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    ItemView(itemImage: "01", itemName: "01")
                    
                    }
            }.frame(height: 100)
                .padding()
            Text("New Music")
            GridStack(rows: 2, columns: 4) { row, col in
                NavigationLink(destination: detailViewFilm()) {
                    VStack {
                        ItemView(itemImage: "0\((row * 4 + col)%3+1)", itemName: "\(row*4 + col)")
                    }
                }
            }.padding([.bottom, .horizontal])
            Text("Genre")
            ScrollView (.horizontal) {
                 HStack {
                     //contents
                    CardView(itemImage: "02", itemName: "POP")
                    CardView(itemImage: "02", itemName: "ROCK")
                    CardView(itemImage: "02", itemName: "HIP-HOP")
                    CardView(itemImage: "02", itemName: "ELECTRONIC")
                    CardView(itemImage: "02", itemName: "JAZZ")
                    CardView(itemImage: "02", itemName: "INDIE")
                 }
            }.frame(height: 100)
                .padding()
            Text("Special")
            ScrollView (.horizontal) {
                HStack {
                         //contents
                    CardView(itemImage: "02", itemName: "2020")
                    CardView(itemImage: "02", itemName: "2020")
                    CardView(itemImage: "02", itemName: "AAA")
                    CardView(itemImage: "02", itemName: "AAA")
                    CardView(itemImage: "02", itemName: "AAA")
                }
            }.frame(height: 100)
                .padding()
        }
        }
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

