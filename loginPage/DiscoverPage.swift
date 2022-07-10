//
//  DiscoverPage.swift
//  loginPage
//
//  Created by Bora Erdem on 10.07.2022.
//

import SwiftUI

struct DiscoverPage: View {
    @State var gotur: Bool = false
    var body: some View {
        ZStack{
            Color("bgColor").ignoresSafeArea()
            VStack{
                VStack {
                    TabView{
                        
                         RoundedRectangle(cornerRadius: 50)
                             .foregroundColor(Color("primaryColor")).clipped().overlay(
                                 VStack{
                                     HStack{
                                         Text("Lovely").font(.system(size: 30, weight: .bold, design: .default)).foregroundColor(.white).padding(.vertical,1)
                                         Spacer()
                                     }.padding(.horizontal,50)
                                     Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a iaculis mauris. Interdum et malesuada").padding(.horizontal,30).font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.white)
                                     Image("Saly-24").resizable().scaledToFit().scaleEffect(2).offset(y:100)
                                 }
                             )
                              
                            
                        RoundedRectangle(cornerRadius: 50).foregroundColor(Color("primaryColor")).clipped().overlay(
                            VStack{
                                Image("Saly-35").resizable().scaledToFit().scaleEffect(1.5).offset(y:-10)
                                VStack{
                                    HStack{
                                        Spacer()
                                        Text("Lovely").font(.system(size: 30, weight: .bold, design: .default)).foregroundColor(.white).padding(.vertical,1)
                                        
                                    }
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a iaculis mauris. Interdum et malesuada").font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.white).multilineTextAlignment(.trailing)
                                }.padding(50)
                                
                            })
                        RoundedRectangle(cornerRadius: 50).foregroundColor(Color("primaryColor")).clipped().overlay(
                            VStack{
                                Image("Saly-11").resizable().scaledToFit().scaleEffect(1.5).offset(y:280)
                                VStack {
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a iaculis mauris. Interdum et malesuada").font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.white).padding(.horizontal, 50).multilineTextAlignment(.center)
                                    

                                }.offset(y:-350)
                                Button {
                                    gotur.toggle()
                                } label: {
                                    secondaryButton(text: "Başla").padding(.horizontal,50).sheet(isPresented: $gotur) {
                                        LoginPage()
                                    }
                                }.frame(width: 300, height: 100, alignment: .center).offset(y:50)

                                
                            }
                        )                    }.tabViewStyle(PageTabViewStyle()).shadow(color: Color.black.opacity(0.5), radius: 15, x: 0, y: 20)
                }
            }.padding()
        }
    }
}

struct DiscoverPage_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPage()
    }
}
