//
//  User.swift
//  UniComm
//
//  Created by Zitao He on 2/18/20.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import Foundation

class User {
    
    var uid: String
    var email: String?
    var displayName: String?
    
    init(uid: String, displayName: String?, email: String?) {
        self.uid = uid
        self.displayName = displayName
        self.email = email
    }
}
