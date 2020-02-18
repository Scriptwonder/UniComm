//
//  ContentView.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/11.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @State var showView = false
    var body: some View {
        NavigationView {
        VStack(alignment:.leading) {
            Text("UniComm")
            .font(.title)
            .foregroundColor(.green)
            
            VStack(alignment: .leading, spacing: 3.0) {
            Text("Username")
                .font(.subheadline)
                TextField("Enter your username", text: $username)
            Text("Password")
                .font(.subheadline)
            TextField("Enter your password", text: $password)
            }.padding(.leading)
            
            VStack(alignment: .leading) {
                NavigationLink(destination: Homepage()) {
                Text("Login")
                }
                NavigationLink(destination: Register(),isActive: $showView) {                Text("Register")
                }
            NavigationLink(destination:forgetPassword()) {
                Text("Forget Password")
                }
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
