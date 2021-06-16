//
//  MusicPlayerView.swift
//  Meditiya
//
//  Created by Dhruv Govani on 14/06/21.
//

import SwiftUI

struct MusicPlayerView: View {
    var body: some View {
        ZStack{
            //Main 0 Index Color
            Color("MainBackground").ignoresSafeArea()
            
            VStack{
                
                //NavBarGroup
                Group{
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                NavigationBar().padding()
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                //Album Image
                Group{
                    
                    Image("AlbumArt")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                }
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 27, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                //Album Cover titles
                Group{
                    Text("Painting Forest")
                        .font(Font.custom("Alegreya", size: 35))
                    Text("By: Painting with Passion")
                        .font(Font.custom("Alegreya Sans", size: 25))
                        .opacity(0.5)
                }
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 51, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                //MusicProgress
                
                Group{
                    
                    MusicProgressLinesBlocks(spacingBetweenLines: 4, lineWidth: 5)
                        .frame(width: UIScreen.main.bounds.width, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 26, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                //ButtonsGroup
                Group{
                    
                    MusicControlPanel()
                    
                }
                
                Spacer()
            }
            
        }
        
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
            .preferredColorScheme(.dark)
    }
}
