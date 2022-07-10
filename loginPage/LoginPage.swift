//
//  LoginPage.swift
//  loginPage
//
//  Created by Bora Erdem on 10.07.2022.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        ZStack {
            Color("bgColor").ignoresSafeArea()
            VStack {
                Spacer()
                Text("Girş Yap").font(.system(size: 32, weight: .bold, design: .default)).padding(.bottom,50)
                loginButon(text: "Google ile giriş yap", bgColor: Color("primaryColor")).foregroundColor(.white)
                loginButon(text: "Apple ile giriş yap", image: "Vector").foregroundColor(Color("primaryColor"))
                    .padding(.vertical,15).shadow(color: Color.black.opacity(0.05), radius: 40, x: 0, y: 16)
                Text("ya da bir kayıt maili al")
                inputView().padding(.vertical)
                PrimaryButton(text: "Mail Al").padding(.bottom,50)
                Divider()
                Spacer()
                VStack{
                    Text("Tamemen senin için")
                    Text("Kullanım şartları ve gizlilik sözleşmesi").font(.system(size: 16, weight: .regular, design: .default)).foregroundColor(Color("primaryColor"))
                }.offset(y:-50)
                
                
                
                
            }.padding(.horizontal,30)
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
