//
//  ChartView.swift
//  Meditiya
//
//  Created by Dhruv Govani on 17/06/21.
//

import SwiftUI

struct ChartView: View {
    
    var yAxis = [999,799,599,399,199,0]
    var xAxis = ["Mon","Tue","Wed","Thu","Fri","Sat"]
    var ChartData = [29,18,56,37,52,74,123,56,83,43,108,83,146] //Out of 230
    
    func ColorForBar(index : Int) -> Color{
        if index % 2 == 0{
            return Color(UIColor().Hex(hexString: "#95CBCF"))
        }else{
            return Color(UIColor().Hex(hexString: "#5E8082"))

        }
    }
    
    var body: some View {
        ZStack{
            Color("MainBackground").ignoresSafeArea()
            
            VStack{
                
                HStack{
                    Spacer().frame(width: 55, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("This Week’s Stats")
                        .font(Font.custom("AlegreyaSans-Bold", size: 12))
                    Spacer()
                    Text("Show All")
                        .font(Font.custom("AlegreyaSans-Bold", size: 12))
                        .opacity(0.5)
                    Spacer().frame(width: 55, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                //YAxis
                Group{
                    
                    Spacer().frame(width: 1, height: 19, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    ForEach(0..<yAxis.count) { (i) in
                        VStack{
                            HStack{
                                Spacer().frame(width: 55, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("\(String(yAxis[i]))")
                                    .font(Font.system(size: 12))
                                Text("----------------------------------")
                                    .foregroundColor(.white)
                                    .opacity(0.3)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                   
                                
                                Spacer().frame(width: 55, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                        }
                        Spacer().frame(width: 1, height: 23, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    //XAxis
                    
                    HStack{
                        ForEach(0..<xAxis.count) { (j) in
                            Spacer()
                            Text("\(xAxis[j])")
                                .font(Font.custom("AlegreyaSans-Regular", size: 15))
                            Spacer()
                        }
                    }.frame(width: UIScreen.main.bounds.width - 140, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.leading,20)
                    
                }
               
                Spacer()
            }
            
            VStack{
                Spacer().frame(width: 1, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                HStack{
                    
                    ForEach(0..<ChartData.count) { (i) in
                        Spacer()
                        Capsule().frame(width: 10, height: CGFloat(ChartData[i]), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.top, 215 - CGFloat(ChartData[i]))
                            .foregroundColor(ColorForBar(index: i))
                        
                    }
                }.padding(.leading,20)
                .frame(width: UIScreen.main.bounds.width - 133, height: 230, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView().colorScheme(.dark)
    }
}
