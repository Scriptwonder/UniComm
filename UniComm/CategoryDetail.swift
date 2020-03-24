//
//  CategoryDetail.swift
//  ProfileUI
//
//  Created by Diana Zheng on 3/7/20.
//  Copyright © 2020 CIS454. All rights reserved.
//

import SwiftUI

struct CategoryDetail: View {
    
    var categoryDetail:Profile
    
    var body: some View {
        List{
            Image(categoryDetail.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            if (categoryDetail.imageName == "movieIcon"){
                Text("Currently Watching")
                List{
                    Text("Inception")
                }
                Text("Already seen")
                List{
                    Text("Avengers")
                }
                Text("Hoping to see")
                List{
                    Text("Dr. Strange")
                }
            }
            if (categoryDetail.imageName == "musicIcon"){
                Text("Currently Listening to")
                List{
                    Text("Memories by Maroon 5")
                }
                Text("Already heard")
                List{
                    Text("Baby by Justin Bieber")
                }
                Text("Hoping to hear")
                List{
                    Text("A Sky Full of Stars by Coldplay")
                }
            }
            if (categoryDetail.imageName == "bookIcon"){
                Text("Currently Reading")
                List{
                    Text("Diary of the Wimpy Kid")
                }
                Text("Already Read")
                List{
                    Text("The Giving Tree")
                }
                Text("Hoping to read")
                List{
                    Text("The Hunger Games")
                }
            }
        }
        
        
    }
}

struct CategoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetail(categoryDetail: profileData[0])
    }
}
