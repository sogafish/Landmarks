//
//  Badge.swift
//  Landmarks
//
//  Created by k.soga on 2020/07/06.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8

    var badgeSymbol: some View {
        ForEach(0..<Badge.rotationCount) { i in
                    RotatedBadgeSymbol(
                        angle: .init(degrees: Double(i) / Double(Badge.rotationCount)) * 360.0
                    ).opacity(0.5)
        }
    }

    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                self.badgeSymbol
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2, y: (3.0 / 4.0) * geometry.size.height)
            }
        }.scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
