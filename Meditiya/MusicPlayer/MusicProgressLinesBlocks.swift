//
//  MusicProgressLinesBlocks.swift
//  Meditiya
//
//  Created by Dhruv Govani on 14/06/21.
//

import SwiftUI

struct MusicProgressLinesBlocks: View {
        
    var spacingBetweenLines : CGFloat
    var lineWidth : CGFloat
    var totalDuration : Double
    var ElpasedDuration : Double
    let lineHeightList : [CGFloat] = [
        30,
        50,
        30
    ]
        
    var lastBarTagValue = 0
    
    func GetColor(index : Int) -> Color {
        
        let totalBars = 41.0
        let totalDuration = self.totalDuration
        let progress = self.ElpasedDuration
        let barsToShow = (progress / totalDuration) * totalBars
        
        if index <= Int(barsToShow){
            return Color("MainTextColor")
        }else{
            return Color("MainTextColor").opacity(0.5)
        }
    }
    
    func getTagFor(i : Int) -> Int{
        if i == 1{
            return i
        }else if i == 2{
            return i + 4
        }else{
            return (4 * (i - 1)) + i
        }
    }
    
    func getTagFor(i : Int, j : Int) -> Int{
        
        if i == 1{
            return i + j
        }else if i == 2{
            return i + 4 + j
        }else{
            return ((4 * (i - 1)) + i) + j
        }
        
    }
    
    var body: some View {
        ZStack{
            Color("MainBackground").ignoresSafeArea()
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: spacingBetweenLines, content: {
                ForEach(1..<9) { (i) in
                    
                    Capsule(style: .circular)
                        .frame(width: lineWidth, height: 15, alignment: .center)
                        .foregroundColor(GetColor(index: getTagFor(i: i)))
                                        
                    ForEach(1..<4){ (j) in
                        
                        Capsule(style: .circular)
                            .frame(width: lineWidth, height: lineHeightList[j - 1], alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(GetColor(index: getTagFor(i: i, j: j)))
                        
                    }
                   
                }
                Capsule(style: .circular)
                    .frame(width: lineWidth, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(GetColor(index: 41))
            })
        }
    }
}

struct MusicProgressLinesBlocks_Previews: PreviewProvider {
    static var previews: some View {
        MusicProgressLinesBlocks(spacingBetweenLines: 4, lineWidth: 6, totalDuration: 5.0, ElpasedDuration: 2.5)
            .preferredColorScheme(.dark)
    }
}
