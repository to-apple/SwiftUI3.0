//
//  ScrollViewOffsetModifier.swift
//  SwiftUI3.0
//
//  Created by Juhan Yoon on 1/14/22.
//

import SwiftUI

struct ScrollViewOffsetModifier: ViewModifier {
    @Binding var offset: CGFloat
    
    var anchorPoint: Anchor = .top
    
    func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader { geo -> Color in
                    let frame = geo.frame(in: .global)
                    
                    DispatchQueue.main.async {
                        switch anchorPoint {
                        case .top:
                            offset = frame.minY
                        case .bottom:
                            offset = frame.maxY
                        case .leading:
                            offset = frame.minX
                        case .trailing:
                            offset = frame.maxX
                        }
                    }
                    return Color.clear
                }
            )
    }
}

enum Anchor {
    case top, bottom, leading, trailing
}
