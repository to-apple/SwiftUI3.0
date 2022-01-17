//
//  SplashScreen.swift
//  SwiftUI3.0
//
//  Created by Juhan Yoon on 1/15/22.
//

import SwiftUI

struct SplashScreen<Content: View, Title: View, Logo: View>: View {
    @State private var textAnimation = false
    @State private var imageAnimation = false
    @State private var endAnimation = false
    
    @Namespace var animation
    
    var content: Content
    var titleView: Title
    var logoView: Logo
    var imageSize: CGSize
    
    init(imageSize: CGSize, @ViewBuilder content: @escaping () -> Content, @ViewBuilder titleView: @escaping () -> Title, @ViewBuilder logoView: @escaping () -> Logo) {
        self.imageSize = imageSize
        self.content = content()
        self.titleView = titleView()
        self.logoView = logoView()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Color("Purple")
                    .background(Color("Purple"))
                
                titleView
                    .scaleEffect(endAnimation ? 0.75 : 1)
                    .offset(y: textAnimation ? -5 : 110)
                
                if !endAnimation {
                    logoView
                        .matchedGeometryEffect(id: "LOGO", in: animation)
                        .frame(width: imageSize.width, height: imageSize.height)
                }
                
                HStack {
                    Spacer()
                    
                    if endAnimation {
                        logoView
                            .matchedGeometryEffect(id: "LOGO", in: animation)
                            .frame(width: 30, height: 30)
                            .padding(.trailing)
                            .offset(y: -5)
                    }
                }
            }
            .frame(height: endAnimation ? 60 : nil)
            .zIndex(1)
            
            content
                .frame(height: endAnimation ? nil : 0)
                .zIndex(0)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                withAnimation(.spring()) {
                    textAnimation.toggle()
                }
                withAnimation(Animation.interactiveSpring(response: 0.6, dampingFraction: 1, blendDuration: 1)) {
                    endAnimation.toggle()
                }
            }
        }
    }
}
