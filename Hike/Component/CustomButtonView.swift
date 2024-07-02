//
//  CustomButtonView.swift
//  Hike
//
//  Created by Md Faizul karim on 2/7/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                LinearGradient(
                    colors: [
                        .CustomWhite,
                        .customGreenLight,
                        .customGreenMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
                )
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                    ],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4
                )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
                )
        }
        .frame(width: 58, height: 58)
        
    }
}

#Preview {
    CustomButtonView()
}
