//
//  MusicControlPanel.swift
//  Meditiya
//
//  Created by Dhruv Govani on 14/06/21.
//

import SwiftUI

struct MusicControlPanel: View {
    
    @State var isPlaying = true
    @State var ScaleAmount : CGFloat = 1
    @State var OverlayScale : CGFloat = 1
    @State var OverLayOpacity : CGFloat = 0
    
    var PlayDidTapped : (Bool) -> ()
    
    var body: some View {
        ZStack{
            Color("MainBackground").ignoresSafeArea()
            
            HStack{
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("Shuffle").resizable().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .accentColor(Color("MainTextColor"))
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("Backward").resizable().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .accentColor(Color("MainTextColor"))
                })
                
                Spacer()
                
                Button(action: {
                    
                    isPlaying.toggle()
                    ScaleAmount += 0.3
                    OverlayScale += 0.4
                    OverLayOpacity = 1
                    PlayDidTapped(isPlaying)
                   
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        self.ScaleAmount = 1
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        OverLayOpacity = 0
                        OverlayScale = 1
                        
                    }
                    
                }, label: {
                    
                    if isPlaying{
                        Image("PlayButton").resizable().frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .accentColor(Color("MainTextColor"))
                    }else{
                        Image("Pause").resizable().frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .accentColor(Color("MainTextColor"))
                    }
                    
                    
                }).scaleEffect(ScaleAmount)
                .animation(.easeIn(duration: 0.3), value: ScaleAmount)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color("MainTextColor"))
                        .scaleEffect(OverlayScale)
                        .animation(.linear(duration: 0.3), value: OverlayScale)
                        .opacity(Double(OverLayOpacity))
                )
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("forward").resizable().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .accentColor(Color("MainTextColor"))
                })
                
                Spacer()
                
                Group{
                
                Button(action: {
                    
                }, label: {
                    Image("Repeat").resizable().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .accentColor(Color("MainTextColor"))
                })
                
                Spacer()
                }
            }
        }
    }
}

struct MusicControlPanel_Previews: PreviewProvider {
    static var previews: some View {
        MusicControlPanel(PlayDidTapped: { (_) in
            
        })
            .preferredColorScheme(.dark)
    }
}
