//
//  signUp.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/16.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI


struct SignUp: View {
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var password1: String = ""
    
    @EnvironmentObject var session : SessionStore
    
    
    var body: some View {
        VStack {
            Text("UniComm")
                .font(.title)
                .foregroundColor(.green)
            
            VStack(alignment: .leading, spacing: 3.0) {
                Text("Email")
                    .font(.subheadline)
                TextField("Enter your email", text: $email)
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
                //NavigationLink(destination: Homepage()) {
                Button(action:signUp){Text("SignUp")}
                //Text("Submit")
                }
            }
        }
    
    
    func signUp(){
        if !password.isEmpty && !email.isEmpty && password == password1{
            session.signUp(email:email,password:password){
                (result,error) in
                if error != nil{print("Error")}
                else{
                    self.email = ""
                    self.password = ""
                }
                
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        SignUp().environmentObject(SessionStore())
    }
}
