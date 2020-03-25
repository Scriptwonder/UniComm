//
//  chat.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct ChatUser: Identifiable {
    
    var id: Int
    
    let username, message,imageName: String
}

struct chat: View {
    
    let users: [ChatUser] = [
        .init(id: 0, username:"Tony He 1", message:"I like wjm",imageName: "tony1-chat"),
        .init(id: 1, username:"Tony He 2", message:"I love wjm",imageName: "tony2-chat"),
        .init(id: 2, username:"Tony He 3", message:"I deeply fall in love with wjm ",imageName: "tony3-chat")
    ]
    
    
    var body: some View {
        NavigationView {
            List  {
                //Text("Recent Contact")
                ForEach(users){ user in
                    //user row
                    HStack {
                        Image(user.imageName)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 4))
                            .frame(width: 70, height: 70)
                            .clipped()
                        VStack(alignment: .leading){
                            Text(user.username).font(.headline)
                            Text(user.message).font(.subheadline)
                        }.padding(.leading,8)//endVstack
                    }.padding(.init(top:12, leading: 0, bottom:12,trailing: 0))//end Hstack
                    
                }.navigationBarTitle(Text("Unicomm Chat"))
            }//end NavigationView
        }//end body
    }





struct chat_Previews: PreviewProvider {
    static var previews: some View {
        chat()
    }
}
}
