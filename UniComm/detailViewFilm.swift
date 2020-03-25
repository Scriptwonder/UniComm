//
//  detailView.swift
//  UniComm
//
//  Created by 吴舒同 on 2020/2/23.
//  Copyright © 2020 吴舒同. All rights reserved.
//

import SwiftUI

struct detailViewFilm: View {
    @State private var comment = 1
    @State private var review = 0
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
        
        // color the list view background
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        
        //UILabel.appearance().textColor = .white
       
    }// hide the list line
    
    var body: some View {
        
        List {
            
            Text("1917").bold().font(.title)
            VStack(alignment: .leading, spacing: 20) {
                
                //Text("1917").font(.headline)
                HStack {
                Image("01")
                .renderingMode(.original)
                .resizable()
                .frame(width: 150, height: 200)
                .cornerRadius(10)
                    VStack(alignment: .leading) {
                    
                        Text("Genre:")
                        Text("Release:")
                        Text("Area:")
                        Text("Language:")
                        Text("Length:")
                        Text("IMDB Link:")
                        //add to list buttom & like buttom
                        HStack(spacing: 30) {
                            Button(action: {
                                print("add")
                                
                            }){
                                Image("add-icon").resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                
                            }
                            .padding(6)
                            /*.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            */
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
                            /*
                            .background(Color.gray)
                            .foregroundColor(.black)
                            .cornerRadius(15)*/
                        }
                    
                    
                    } //end VStack
                    
                }// end HStack
                
            }// end Outer Vstack
                
            
                Text("#This place will show the review score#").background(Color.gray)
                //a function with a parameter score that could show an animated five stars
                //put award here if possible
                Text("Plot Description:")
                Text("Cast:")
                Text("Director:")
                Text("Cinematography:")
                Text("Actor:")
                  
              
            HStack(alignment: .center) {
                    NavigationLink(destination:Comment()) {
                        Button("Comment") {
                            self.comment = 1
                            self.review = 0
                        }
                    }
                    NavigationLink(destination:Review()) {
                        Button("Review") {
                            self.review = 1
                            self.comment = 0
                        }
                    }
                }// end HStack
                //now this will show a viewPager with the left being comment and right being review(span the whole width)
        } // end List
            .background(Image("film-detail"))
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(Color.white)
        
        //.colorMultiply(Color.black.opacity(0.5))
    }// end Body
    
    


struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailViewFilm()
    }
}
}// end all
