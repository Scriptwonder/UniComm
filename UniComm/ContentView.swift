//
//  ContentView.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/11.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("UniComm")
            .font(.title)
            .foregroundColor(.green)
            
            VStack(alignment: .leading, spacing: 3.0) {
            Text("Username")
                .font(.subheadline)
            TextField("Enter your username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Text("Password")
                .font(.subheadline)
            TextField("Enter your password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            }.padding(.leading)
            
            VStack(alignment: .leading) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Login")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Register")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Forget Password")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
