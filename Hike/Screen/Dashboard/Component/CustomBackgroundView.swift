//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Md Faizul karim on 2/7/24.
//

import SwiftUI

struct CustomBackgroundView : View {
    var body: some View {
        ZStack {
            Color.colorGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            
        //MARK: - 2. LIGHT
            Color.colorGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.80)
            
        //MARK: - 1. SURFACE
            LinearGradient (
                colors: [
                    .customGreenLight,
                    .customGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
