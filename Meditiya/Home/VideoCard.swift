//
//  VideoCard.swift
//  Meditiya
//
//  Created by Dhruv Govani on 10/06/21.
//

import SwiftUI

struct VideoCard: View {
    
    var VideoTitle : String
    var VideoSubtitle : String
    var VideoImage : String
    
    var body: some View {
        ZStack{
            Color("MainTextColor").cornerRadius(20).edgesIgnoringSafeArea(.all)
            HStack{
                VStack{
                    Text(VideoTitle)
                        .font(Font.custom("Alegreya-Bold", size: 25))
                        .foregroundColor(Color("MainBackground"))
                    Text(VideoSubtitle)
                        .font(Font.custom("AlegreyaSans-Medium", size: 15))
                        .lineLimit(nil)
                        .foregroundColor(Color("MainBackground"))
                    Button(action: {}, label: {
                        ZStack{
                            Color("MainBackground")
                                .cornerRadius(10)
                            HStack{
                                Text("Watch Now")
                                    .foregroundColor(Color("MainTextColor"))
                                    .font(Font.custom("AlegreyaSans-Medium", size: 15))
                                Image("PlayButton")
                                    .resizable()
                                    .frame(width: 13, height: 13, alignment: .center)
                                    .accentColor(Color("MainTextColor"))
                            }
                        }.frame(width: 138, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                }.padding([.leading], 30)
                Image(VideoImage).resizable()
                    .padding([.top],5)
                    .padding([.bottom],5)
                    .padding([.trailing], 0)
                    .aspectRatio(contentMode: .fit)
                    
            }
        }.frame(height: 190).onAppear(perform: {
            UIView().backgroundColor = .clear
        })
        .listRowBackground(Color("MainBackground"))
    }
}

struct VideoCard_Previews: PreviewProvider {
    static var previews: some View {
        VideoCard(VideoTitle: "test", VideoSubtitle: "test", VideoImage: "CardioArt")
    }
}
