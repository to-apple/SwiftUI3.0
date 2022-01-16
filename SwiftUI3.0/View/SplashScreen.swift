//
//  SplashScreen.swift
//  SwiftUI3.0
//
//  Created by Juhan Yoon on 1/15/22.
//

import SwiftUI

struct SplashScreen<Content: View, Title: View, Logo: View>: View {
    var content: Content
    var titleView: Title
    var logoView: Logo
    
    init(@ViewBuilder content: @escaping () -> Content, @ViewBuilder titleView: @escaping () -> Title, @ViewBuilder logoView: @escaping () -> Logo) {
        self.content = content()
        self.titleView = titleView()
        self.logoView = logoView()
    }
    
    var body: some View {
        Text("Hello, World'")
    }
}
