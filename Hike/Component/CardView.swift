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
                    Text("Fun and ejoyable outdoor activities for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                
                //MARK: MAIN CONTENT VIEW
                ZStack {
                    CustomCircleView()
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 2), value: 1)
                    
                }
                
                //MARK: FOOTER VIEW
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Exlpore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .customGreenLight,
                                .customGreenMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                })
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
