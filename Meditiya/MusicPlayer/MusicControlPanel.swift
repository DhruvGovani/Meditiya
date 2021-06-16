//
//  MusicControlPanel.swift
//  Meditiya
//
//  Created by Dhruv Govani on 14/06/21.
//

import SwiftUI

struct MusicControlPanel: View {
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
                    
                }, label: {
                    Image("Pause").resizable().frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .accentColor(Color("MainTextColor"))
                })
                
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
        MusicControlPanel()
            .preferredColorScheme(.dark)
    }
}
