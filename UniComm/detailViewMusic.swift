//
//  detailViewMusic.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct detailViewMusic: View {
    
    init() {
           UITableView.appearance().tableFooterView = UIView()
           UITableView.appearance().separatorStyle = .none
           
           // color the list view background
           UITableView.appearance().backgroundColor = .clear
           UITableViewCell.appearance().backgroundColor = .clear
           
          
       }// hide the list line

    
    var body: some View {
        List {
                   VStack(alignment: .leading, spacing: 20) {
                    Text("1917").font(.largeTitle)
                       HStack {
                       Image("01")
                       .renderingMode(.original)
                       .resizable()
                       .frame(width: 140, height: 200)
                       .cornerRadius(5)
                           VStack(alignment: .leading) {
                               Text("Artist:")
                               Text("Genre:")
                               Text("Release:")
                            HStack(spacing: 30) {
                            Button(action: {
                                    print("add")
                                                
                            }){
                                    Image("add-icon").resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                        }
                                        .padding(6)
                                            
                                    Divider()
                                            
                            Button(action: {
                                    print("like")
                                                
                            }){
                                    Image("likebuttom")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                            }
                                        .padding(6)
                                            
                                    }//end with Hstack()like add button
                     
                           
                        }//end with VStack(artist,genre...)
                    
                    }//end with HStack
                    
                    
                    
                    
                    
                    
                    
                    
                    
                       Text("#This place will show the review score and the button to rate#").background(Color.pink)
                       //a function with a parameter score that could show an animated five stars
                        //award if possible
                       Text("Tracks:")
                       //tracks
                       Divider()
                       HStack {
                           NavigationLink(destination:Comment()) {
                               Button("Comment") {
                                   
                               }
                           }
                           NavigationLink(destination:Review()) {
                               Button("Review") {
                                   
                               }
                           }
                       }
                        Comment()
                       //now this will show a viewPager with the left being comment and right being review(span the whole width)
                       
                   }
                   //similar musiclist
            }.background(Image("music-detail"))
               .edgesIgnoringSafeArea(.all)
            .foregroundColor(Color.white)
    }
}

struct detailViewMusic_Previews: PreviewProvider {
    static var previews: some View {
        detailViewMusic()
    }
}
