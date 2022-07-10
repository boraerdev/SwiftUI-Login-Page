//
//  WelcomeScreen.swift
//  loginPage
//
//  Created by Bora Erdem on 10.07.2022.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("bgColor").ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("sally").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    NavigationLink(destination: DiscoverPage().navigationBarHidden(true)) {
                        PrimaryButton(text: "Keşfet")
                    }.navigationBarHidden(true)
                    NavigationLink(destination: LoginPage().navigationBarHidden(true)) {
                        secondaryButton(text: "Kayıt Ol").padding(.vertical)
                    }.navigationBarHidden(true)
                    HStack{
                        Text("Bir hesabın var mı?")
                        Text("Giriş Yap").foregroundColor(Color("primaryColor"))
                    }.padding(.vertical,10)
                    
                }.padding(.horizontal,30)
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
