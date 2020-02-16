//
//  Login.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/16.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State var name: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var password1: String = ""
    var body: some View {
        VStack {
            Text("UniComm")
                .font(.title)
                .foregroundColor(.green)
            
            VStack(alignment: .leading, spacing: 3.0) {
                Text("Email")
                    .font(.subheadline)
                TextField("Enter your username", text: $name)
                Text("Username")
                    .font(.subheadline)
                TextField("Enter your username", text: $username)
                Text("Password")
                    .font(.subheadline)
                TextField("Enter your password", text: $password)
                Text("Re-enter Password")
                    .font(.subheadline)
                TextField("Re-enter your password", text: $password1)
            }
            
            VStack(alignment: .leading) {
                NavigationLink(destination: Homepage()) {
                Text("Submit")
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
