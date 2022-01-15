//
//  Home.swift
//  SwiftUI3.0
//
//  Created by Juhan Yoon on 1/14/22.
//

import SwiftUI

struct Home: View {
    @State private var currentTab = "p1"
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                let size = geo.size
                
                Image(currentTab)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
            }
            .ignoresSafeArea()
            .overlay(.ultraThinMaterial)
            .colorScheme(.dark)
            
            TabView(selection: $currentTab) {
                ForEach(1...7, id: \.self) { index in
                    CarouselBodyView(index: index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
