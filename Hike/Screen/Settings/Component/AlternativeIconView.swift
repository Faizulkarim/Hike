//
//  AlternativeIconView.swift
//  Hike
//
//  Created by Md Faizul karim on 4/7/24.
//

import SwiftUI

struct AlternativeIconView: View {
    
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(alternateAppIcons.indices, id: \.self) { item in
                        Button(action: {
        
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    
                                    if error != nil {
                                        print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    }else {
                                        print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                                    }
                                    
                                }
                            
                        }, label:  {
                            Image("\(alternateAppIcons[item])-Preview")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(.buttonBorder)
                        })
                        .buttonStyle(.borderless)
                    }
                }
            }
            .padding(.top, 8)
            .padding(.bottom, -10)
            
            Text("Chose your favourite app icon from the collection above.")
                .frame(minWidth: 0, maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .font(.footnote)
                .lineSpacing(-16)
                .padding(.bottom, 8)
        }
}

#Preview {
    AlternativeIconView()
}
