//
//  SettingsView.swift
//  Hike
//
//  Created by Md Faizul karim on 2/7/24.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        List {
            Section {
                SettingsHeader()
            }
            .listRowSeparator(.hidden)
            
            Section(header: Text("Alternative Icons")) {
                AlternativeIconView()
            }
            .listRowSeparator(.hidden)
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright ©Hike All right reserved.")
                    Spacer()
                }
            ) {
                CustomListCellView(icon: "apps.iphone", titleLabel: "Application",value: "Hike", tinColor: .blue)
                
                CustomListCellView(icon: "info.circle", titleLabel: "Compatibility",value: "iOS, iPadOS", tinColor: .red)
                
                CustomListCellView(icon: "swift", titleLabel: "Technology",value: "Swift", tinColor: .orange)
                
                CustomListCellView(icon: "gear", titleLabel: "Version",value: "1.0", tinColor: .purple)
                
                CustomListCellView(icon: "ellipsis.curlybraces", titleLabel: "Developer",value: "Md Faizul karim", tinColor: .mint)
                
                CustomListCellView(icon: "globe", titleLabel: "Github", tinColor: .indigo, linkValue: "@faizulkarim", linkValueDestination: "https://github.com/Faizulkarim")
            }
        }
    }
}

#Preview {
    SettingsView()
}
