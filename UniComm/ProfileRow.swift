//
//  ProfileRow.swift
//  ProfileUI
//
//  Created by Diana Zheng on 3/1/20.
//  Copyright © 2020 CIS454. All rights reserved.
//

import SwiftUI



struct ProfileRow: View {
    var categoryType:String
    var categories:[Profile]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                
                Text(self.categoryType)
                    .font(.title)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top){
                        ForEach (self.categories, id: \.self) { category in
                            NavigationLink(destination: CategoryDetail(categoryDetail: category)){
                                ProfileItems(categoryItem: category)
                                .frame(width: 125)
                                .padding(.trailing, 5)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ProfileRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRow(categoryType: "genre", categories: profileData)
    }
}
