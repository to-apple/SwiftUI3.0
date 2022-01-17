//
//  Home.swift
//  SwiftUI3.0
//
//  Created by Juhan Yoon on 1/15/22.
//

import SwiftUI

struct Home_AnimatedSplashScreen: View {
    var body: some View {
        SplashScreen(imageSize: CGSize(width: 128, height: 128)) {
            Image("post1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .cornerRadius(10)
            
        } titleView: {
            Text("Chatty")
                .font(.system(size: 35).bold())
                .foregroundColor(.white)

        } logoView: {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home_AnimatedSplashScreen()
    }
}
