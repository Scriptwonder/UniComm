//
//  Login.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/16.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct Login: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("UniComm")
            .font(.title)
            .foregroundColor(.green)
            
            VStack(alignment: .leading, spacing: 3.0) {
            Text("Email")
                .font(.subheadline)
            TextField("Enter your username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Text("Username")
                .font(.subheadline)
            TextField("Enter your username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Text("Password")
                .font(.subheadline)
            TextField("Enter your password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Text("Re-enter Password")
                .font(.subheadline)
            TextField("Re-enter your password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            }
            
            VStack(alignment: .leading) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
