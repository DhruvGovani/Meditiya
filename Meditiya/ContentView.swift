//
//  ContentView.swift
//  Meditiya
//
//  Created by Dhruv Govani on 09/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedView = 2
    
    init() {
        UITabBar.appearance().barTintColor = UIColor().Hex(hexString: "#253334")
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        TabView{
            
            //FirstTab
            Group{
                MainView(featuredVideoList: [
                    
                    FeaturedVideo(videoId: "1", Title: "Meditation 101", Subtitle: "Techniques, Benefits, and a Beginner’s How-To do.", Image: "CardioArt"),
                    FeaturedVideo(videoId: "2", Title: "Cardio", Subtitle: "Basics of Yoga for Beginners or Experienced Professionals", Image: "MeditationArt")
                    
                ]).tabItem {
                    
                    Color("MainBackground")
                    Button(action: {
                        selectedView = 2
                    }, label: {
                        Label("", image: "Home")
                    })
                    
                }.ignoresSafeArea().tag(1)
                
            }
            
            //SecondTab
            Group{
                MusicPlayerView().tabItem {
                    
                    Color("MainBackground")
                    Button(action: {
                        selectedView = 1
                    }, label: {
                        Label("", image: "MusicPlayer")
                    })
                    
                }.ignoresSafeArea().tag(2)
            }
            
            //Third
            Group{
                MyAccount().tabItem {
                    
                    Color("MainBackground")
                    Button(action: {
                        selectedView = 3
                    }, label: {
                        Label("", image: "User")
                    })
                    
                }.ignoresSafeArea().tag(2)
            }
        }.accentColor(Color(.white))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
