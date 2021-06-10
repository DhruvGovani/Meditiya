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
       
    }
    
    var body: some View {
        TabView{
            MainView().tabItem {
                
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
