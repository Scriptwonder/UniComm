//
//  addContent.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct addContent: View {
    
    var body: some View {
        NavigationView {
        VStack {
            HStack {
                Text("Image Here")
                Spacer()
                Text("TBD")
            }.padding(50)
            .frame(width: UIScreen.main.bounds.width)
            .frame(maxHeight: .infinity)
            .background(Color.green)
                
            NavigationLink(destination: thoughtRecord()) {
            HStack {
                Text("Image Here")
                Spacer()
                Text("Record Thoughts")
                }
            }.padding(50)
            .background(Color.yellow)
            .frame(width: UIScreen.main.bounds.width)
            NavigationLink(destination: reviewPost()) {
            HStack {
                Text("Image Here")
                Spacer()
                Text("Post A Review")
                }
            }.padding(50)
            .background(Color.purple)
            .frame(width: UIScreen.main.bounds.width)
            NavigationLink(destination: listCreate()) {
            HStack {
                Text("Image Here")
                Spacer()
                Text("Create A List")
                }
            }.padding(50)
            .background(Color.red)
            .frame(width: UIScreen.main.bounds.width)
        }.frame(maxHeight:.infinity, alignment: .leading)
        }
    }
}

struct addContent_Previews: PreviewProvider {
    static var previews: some View {
        //addContent()
        thoughtRecord1()
    }
}

struct thoughtRecord: View  {
    var body: some View {
        NavigationView {
        List {
            NavigationLink(destination: thoughtRecord1()) {
            Text("Write fresh thoughts")
            }
            //then the rest of the list should be the old thoughts written
        }
        }
    }
}

struct reviewPost: View  {
    var body: some View {
        NavigationView {
        List {
            NavigationLink(destination: reviewPost1()) {
            Text("Post a new Review")
            }
            //then the rest should be the old reviews
        }
        }
    }
}

struct listCreate: View  {
    var body: some View {
        NavigationView {
        List {
            NavigationLink(destination: listCreate1()) {
            Text("Create a new List")
            }
            //the rest of the list should be the created list
        }
        }
    }
}

struct thoughtRecord1: View  {
    @State var thoughts: String = ""
    var body: some View {
        VStack {
            HStack {
                Button("Cha") {
                    
                }.background(Color.green)
                    .foregroundColor(Color.white)
                Spacer()
                Button("Done") {
                    
                }.background(Color.green)
                .foregroundColor(Color.white)
            }.background(Color.gray)
            TextField("", text: $thoughts)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(12)
        }
    }
}

struct reviewPost1: View  {
     @State var reviews: String = ""
    var body: some View {
        VStack {
            TextField("", text: $reviews)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(12)
        }
    }
}

struct listCreate1: View  {
     @State var listName: String = ""
    var body: some View {
        HStack {
           Text("ListName: ")
                .font(.subheadline)
            
            TextField(" ", text: $listName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(12)
        }
    }
}


