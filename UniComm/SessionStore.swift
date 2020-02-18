//
//  SessionStore.swift
//  UniComm
//
//  Created by Zitao He on 2/18/20.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseAuth


class SessionStore: ObservableObject{
    @Published var session : User?
    @Published var isLoggined : Bool?
    //@Published var
    
    func listen(){
        _ = Auth.auth().addStateDidChangeListener{ (auth,user) in
            if let user = user{
                self.session = User(
                    uid: user.uid,
                    displayName: user.displayName,
                    email: user.email)
                self.isLoggined = true
                
            }
            else{
                self.isLoggined = false
                self.session = nil
            }
        }
    }
    
    func signUp(
        email:String,
        password:String,
        handler:@escaping AuthDataResultCallback){
        Auth.auth().createUser(withEmail:email,password:password,completion:handler)
        
    }
    func logIn(
        email:String,
        password:String,
        handler:@escaping AuthDataResultCallback){
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    func signOut(){
        try!
        Auth.auth().signOut()
        self.isLoggined = false
        self.session = nil}
}
