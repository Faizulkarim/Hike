//
//  CustomListCellView.swift
//  Hike
//
//  Created by Md Faizul karim on 3/7/24.
//

import SwiftUI

struct CustomListCellView: View {
    @State var icon: String
    @State var titleLabel: String
    @State var value: String?
    @State var tinColor : Color
    @State var linkValue: String?
    @State var linkValueDestination: String?
    
    var body: some View {
        
        LabeledContent {
            
            if let value {
                
                Text(value)
                    .foregroundStyle(Color.primary)
                    .fontWeight(.heavy)
                
            }else if let linkValue, let linkValueDestination {
                Link(linkValue, destination: URL(string: linkValueDestination)!)
                    .foregroundStyle(.purple)
                    .fontWeight(.heavy)
                
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            
            HStack {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(tinColor)
                    
                    Image(systemName: icon)
                        .foregroundStyle(Color.white)
                        .fontWeight(.semibold)
                }
                Text(titleLabel)
            }
        }
    }
}

#Preview {
    List{
        CustomListCellView(icon: "globe", titleLabel: "Github", tinColor: .red,linkValue: "@Faizulkarim", linkValueDestination: "https://github.com/Faizulkarim")
    }
}
