//
//  CardView.swift
//  Hike
//
//  Created by Md Faizul karim on 2/7/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                
                //MARK: - HEADER VIEW
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGrayLight,
                                    .customGrayMedium
                                ],
                                 startPoint: .top,
                                 endPoint: .bottom
                                )
                            )
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                          CustomButtonView()
                        })
                    }
                }
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
