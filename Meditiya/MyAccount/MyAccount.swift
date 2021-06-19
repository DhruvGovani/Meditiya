//
//  MyAccount.swift
//  Meditiya
//
//  Created by Dhruv Govani on 17/06/21.
//

import SwiftUI

struct MyAccount: View {
    
    @State var selectedOption : Int = 0
    
    var UnSelectedColor : Color = Color("MainBackground").opacity(0.5)
    var selectedLineColor : Color = Color("MainBackground")

    var body: some View {
        ZStack{
            Color("MainBackground").ignoresSafeArea()
            VStack{
                
                //NavBarGroup
                Group{
                    Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    NavigationBar().padding()
                    
                    Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Group{
                    Image("Profile")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .cornerRadius(100)
                    
                    Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Group{
                    
                    Text("Dhruv Govani")
                        .font(Font.custom("Alegreya-Bold", size: 35))
                        .foregroundColor(Color("MainTextColor"))
                    
                    Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Ahmedabad, Gujrat")
                        .font(Font.custom("Alegreya-Sans", size: 20))
                        .foregroundColor(Color("MainTextColor"))
                    
                    Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 34, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Group{
                    
                    HStack(alignment: .center, spacing: 0, content: {
                        
                        VStack{
                            
                            Button(action: {
                                selectedOption = 0
                            }, label: {
                                Text("STATS")
                                    .accentColor(selectedOption == 0 ? .white : UnSelectedColor)
                                    .font(Font.custom("Alegreya-Sans", fixedSize: 16))
                                    .foregroundColor(Color("MainTextColor"))
                            }).frame(width: UIScreen.main.bounds.width / 2, height: 31, alignment: .center)
                            
                            Rectangle().frame(width: UIScreen.main.bounds.width / 2, height: 2, alignment: .bottom).foregroundColor(selectedOption == 0 ? selectedLineColor : UnSelectedColor)
                            
                        }
                        
                        
                        VStack{
                            
                            Button(action: {
                                selectedOption = 1
                            }, label: {
                                Text("ACHIEVEMENTS")
                                    .accentColor(selectedOption == 1 ? .white : UnSelectedColor)
                                    .font(Font.custom("Alegreya-Sans", fixedSize: 16))
                                    .foregroundColor(Color("MainTextColor"))
                            }).frame(width: UIScreen.main.bounds.width / 2, height: 31, alignment: .center)
                            
                            Rectangle().frame(width: UIScreen.main.bounds.width / 2, height: 2, alignment: .bottom).foregroundColor(selectedOption == 1 ? selectedLineColor : UnSelectedColor)
                            
                        }
                        
                        
                    }
                    
                    )}
                
                Spacer().frame(width: 1, height: 19, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                ChartView()
                
                Spacer()
                
            }
        }
    }
}

struct MyAccount_Previews: PreviewProvider {
    static var previews: some View {
        MyAccount().colorScheme(.dark)
    }
}
