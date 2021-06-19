//
//  MainView.swift
//  Meditiya
//
//  Created by Dhruv Govani on 09/06/21.
//

import SwiftUI

struct FeaturedVideo : Identifiable{
    var videoId : String
    var Title: String
    var Subtitle: String
    var Image: String
    var id: String {
        videoId
    }
}

struct MainView: View {
    
    let featuredVideoList : [FeaturedVideo]
    
    @State var ListOpacity : Double = 0
    
    var body: some View {
        ZStack{
            Color("MainBackground")
            VStack{
                Group{
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                NavigationBar().padding()
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Group{
                
                Text("Welcome Back, Dhruv!")
                    .font(Font.custom("Alegreya-Regular", fixedSize: 30))
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: UIScreen.main.bounds.width - 25, height: nil, alignment: .leading)
                    .foregroundColor(Color("MainTextColor"))
                
                Spacer().frame(width: 100, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("How are you feeling today ?")
                    .font(Font.custom("AlegreyaSans-Regular", fixedSize: 22))
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: UIScreen.main.bounds.width - 25, height: nil, alignment: .leading)
                    .foregroundColor(Color("MainTextColor").opacity(0.7))
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 35, alignment: .center)
                
                }
                
                Group{
                HStack{
                    Spacer()
                    Card(imageIcon: "Calm - Icon").frame(width: 65, height: 65, alignment: .center)
                    Spacer()
                    Card(imageIcon: "Relax")
                        .frame(width: 65, height: 65, alignment: .center)
                    Spacer()
                    Card(imageIcon: "Focus")
                        .frame(width: 65, height: 65, alignment: .center)
                    Spacer()
                    Card(imageIcon: "Anxious")
                        .frame(width: 65, height: 65, alignment: .center)
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width, height: 65, alignment: .center)

                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 22, alignment: .center)
                    
                }
                
                Group{
                    
                    List{
                        
                        ForEach(featuredVideoList) { (video) in
                            VideoCard(VideoTitle: video.Title, VideoSubtitle: video.Subtitle, VideoImage: video.Image)
                                .opacity(ListOpacity)
                        }
                        
                    }
                    .onAppear() {
                        
                        UITableView.appearance().backgroundColor = UIColor.clear
                        
                    }
                    
                                       
                }.animation(.easeIn(duration: 0.2))
                
                
                
             //  Spacer()

            }
        }.ignoresSafeArea()
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                ListOpacity = 1
            }
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(featuredVideoList: [
            FeaturedVideo(videoId: "1", Title: "Test", Subtitle: "Test1", Image: "CardioArt"),
            FeaturedVideo(videoId: "2", Title: "Test", Subtitle: "Test2", Image: "MeditationArt")
        ])
        .preferredColorScheme(.dark)
    }
}
