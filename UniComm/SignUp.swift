//
//  Login.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/16.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @State var name: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var password1: String = ""
    var body: some View {
        ScrollView {
        VStack {
            Image("logo1").resizable().scaledToFit().frame(width:300.0,height:280.0)
            Text("Sign Up").fontWeight(.medium)
                .font(.largeTitle)
            .padding([.top,.bottom],20)
            
            VStack(alignment: .leading) {
                Text("Email")
                    .font(.headline).fontWeight(.light)
                TextField("Enter your username", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding(1)
                
                Text("Username")
                    .font(.headline).fontWeight(.light)
                TextField("Enter your username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding(1)
                Text("Password")
                    .font(.headline).fontWeight(.light)
                TextField("Enter your password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding(1)
                
                Text("Re-enter Password")
                    .font(.headline).fontWeight(.light)
                TextField("Re-enter your password", text: $password1)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding(1)
            }.padding()
            
            VStack(alignment: .leading) {
                NavigationLink(destination: Homepage()) {
                    Text("Submit").font(.headline)
                }
            }
        }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
