//
//  NavigationBar.swift
//  Meditiya
//
//  Created by Dhruv Govani on 09/06/21.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        
        ZStack{
            HStack{
                Button(action: {
                    print("Hello World")
                }, label: {
                    
                    Image("Hamburger")
                        .resizable()
                        .frame(width: 22, height: 18, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                }).accentColor(Color("MainTextColor"))
                Spacer()
            }
            
            Button(action: {
                print("Hello World")
            }, label: {
                
                Image("Logo_CutOut")
                    .resizable()
                    .frame(width: 43, height: 49, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
            }).accentColor(Color("MainTextColor"))
            
            HStack{
                Spacer()
                Button(action: {
                    print("Hello World")
                }, label: {
                    
                    Image("Profile")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                }).accentColor(Color("MainTextColor"))
                .cornerRadius(17.5)
            }
            
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
