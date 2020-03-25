//
//  detailViewBook.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct detailViewBook: View {
    @State private var comment = 1
    @State private var review = 0
    
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
                        Text("Author:")
                        Text("Genre:")
                        Text("Release:")
                        Text("Length:")
                        Text("ISBN:")
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
                    
                    }//end with Vstack (the author,genre...)
                  
                    
                    
                }//end with HStack
                
                
                
                
                
                
                
                
                
                
                Text("#This place will show the review score and the button to rate#").background(Color.pink)
                //a function with a parameter score that could show an animated five stars
                Text("Plot Description:")
                //plot
                Divider()
                HStack {
                    NavigationLink(destination:Comment()) {
                        Button("Comment") {
                            self.comment = 1
                            self.review = 0
                        }
                    }
                    Spacer()
                    NavigationLink(destination:Review()) {
                        Button("Review") {
                            self.comment = 0
                            self.review = 1
                        }
                    }
                }
                if (self.comment == 1) {
                Comment()
                } else {
                Review()
                }
                //now this will show a viewPager with the left being comment and right being review(span the whole width)
                
            }
            //similar booklist
        }
        .background(Image("bookback"))
        .edgesIgnoringSafeArea(.all)
        .foregroundColor(Color.black)
    }
}

struct detailViewBook_Previews: PreviewProvider {
    static var previews: some View {
        detailViewBook()
    }
}
