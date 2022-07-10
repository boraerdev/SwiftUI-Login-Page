//
//  ContentView.swift
//  loginPage
//
//  Created by Bora Erdem on 10.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        WelcomeScreen()

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var text : String
    var body: some View {
        Text(text).font(.system(size: 20, weight: .bold)).foregroundColor(.white).padding(.vertical,20).frame(maxWidth: .infinity).background(Color("primaryColor")).cornerRadius(50)
    }
}

struct secondaryButton: View {
    var text : String
    var body: some View {
        Text(text).font(.system(size: 20, weight: .bold)).foregroundColor(Color("primaryColor")).padding(.vertical,20).frame(maxWidth: .infinity).background(Color.white).cornerRadius(50).shadow(color: Color.black.opacity(0.05), radius: 40, x: 0, y: 16)
    }
}

struct loginButon: View {
    var text: String
    var image: String =  "gVector"
    var bgColor : Color = Color.white
    var body: some View {
        HStack {
            
            Image(image).padding(.leading,30)
            Spacer()
            Text(text)
            Spacer()
        }.font(.system(size: 20, weight: .bold)).padding(.vertical,20).frame(maxWidth: .infinity).background(bgColor).cornerRadius(50)
    }
}

struct inputView: View {
    @State private var mail : String = ""
    
    var metin : String = "Mail adresini gir"
    var body: some View {
        TextField(metin, text: $mail).padding(.horizontal,30).foregroundColor(Color("primaryColor")).font(.system(size: 20, weight: .regular)).foregroundColor(Color("primaryColor")).padding(.vertical,20).frame(maxWidth: .infinity).background(Color.white).cornerRadius(50).shadow(color: Color.black.opacity(0.05), radius: 40, x: 0, y: 16)
    }
}
