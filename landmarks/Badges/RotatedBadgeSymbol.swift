//
//  RotatedBadgeSymbol.swift
//  landmarks
//
//  Created by frank0 on 2022/7/8.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    
    let angle : Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle,anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
