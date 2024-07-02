//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Md Faizul karim on 2/7/24.
//

import SwiftUI

struct GradientButton : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ? LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(.capsule)
    }
}
