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
    
    @State var ScaleEffectAmount : CGFloat = 1
    
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
                    .scaleEffect(ScaleEffectAmount)
                    .gesture(
                        DragGesture()
                            .onEnded({ (_) in
                                ScaleEffectAmount = 1
                            })
                            .onChanged({ (_) in
                                ScaleEffectAmount = 1.2
                            })
                    )
                    .animation(.easeIn(duration: 0.2))
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
