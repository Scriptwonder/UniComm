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
        VStack(alignment:.center) {
            Text("UniComm")
                .font(Font.custom("Nightcall",size: 50))
            .foregroundColor(.green)
                .padding(.vertical, 80)
            
            VStack(alignment: .leading, spacing: 3.0) {
            Text("Username")
                .font(.subheadline)
                .padding(12)
                
                TextField("Enter your username: ", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(12)
                
            Text("Password")
                .font(.subheadline)
                .padding(12)
            
                TextField("Enter your password: ", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(12)
                
            }.padding(.leading)
            
            VStack(alignment: .center, spacing: 10.0) {
                NavigationLink(destination: Homepage()) {
                Text("Login")
                }
                NavigationLink(destination: SignUp(),isActive: $showView) {                Text("Register")
                }
            NavigationLink(destination:forgetPassword()) {
                Text("Forget Password")
                }
            }
            .padding(.vertical, 80)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
