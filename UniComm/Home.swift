//
//  Home.swift
//  ProfileUI
//
//  Created by Diana Zheng on 3/7/20.
//  Copyright © 2020 CIS454. All rights reserved.
//

import SwiftUI
struct HomeView: View {
    
    var homeCategories:[String: [Profile]]{
        Dictionary(grouping: profileData,
              by: {$0.categoryName.rawValue}
        )
    }
    
    var body: some View {
        NavigationView{
            List {
                ForEach(homeCategories.keys.sorted(), id:\String.self){ key in
                    ProfileRow(categoryType: "\(key)".uppercased(), categories:self.homeCategories[key]!)
                    .frame(height: 320)
                        .padding(.top)
                        .padding(.bottom)
                }
            }
        .navigationBarTitle(Text("Your Profile"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
