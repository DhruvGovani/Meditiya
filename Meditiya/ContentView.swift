//
//  ContentView.swift
//  Meditiya
//
//  Created by Dhruv Govani on 09/06/21.
//

import SwiftUI

struct ContentView: View {
    
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
            MainView(featuredVideoList: [
            
                FeaturedVideo(videoId: "1", Title: "Meditation 101", Subtitle: "Techniques, Benefits, and a Beginner’s How-To do.", Image: "CardioArt"),
                FeaturedVideo(videoId: "2", Title: "Cardio", Subtitle: "Basics of Yoga for Beginners or Experienced Professionals", Image: "MeditationArt")
            
            ]).tabItem {
                
                Color("MainBackground")
                Label("", image: "Home")
                
            }.ignoresSafeArea()
            
        }.accentColor(Color(.white))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
