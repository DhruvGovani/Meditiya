//
//  Card.swift
//  Meditiya
//
//  Created by Dhruv Govani on 10/06/21.
//

import SwiftUI
import Foundation

struct Card: View{
    var imageIcon : String
    
    
    var body: some View {
        ZStack{
            Color("MainTextColor").cornerRadius(20)
            VStack{
                Image(imageIcon)
                    .resizable()
                    .accentColor(Color("MainBackground"))
                    .colorInvert()
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 14)
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(imageIcon: "Home")
            .preferredColorScheme(.light)
    }
}
