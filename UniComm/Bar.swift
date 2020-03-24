//
//  Bar.swift
//  UniComm
//
//  Created by 杨端 on 3/7/20.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct Bar: View {
    @State var selectedView = 1
    var body: some View {
        TabView(selection: $selectedView){
            MainPage()
                .tabItem ({
                    VStack {
                        Text("Menu")
                        Image("main")
                    }
                
                }).tag(1)
            
            Homepage().tabItem({
                VStack {
                    Text("Category")
                    Image("cate")
                }
                }).tag(2)
            
            addContent().tabItem({
                VStack {
                    Text("Add")
                    Image("add")
                }
                }).tag(3)
            
            chat().tabItem({
                VStack {
                    Text("Chat")
                    Image("chat")
                }
                }).tag(4)
            HomeView().tabItem({
                VStack {
                    Text("Blog")
                    Image("per")
                }
            }).tag(5)
        }
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar()
    }
}
