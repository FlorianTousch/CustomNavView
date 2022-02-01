//
//  AppNavBarView.swift
//  CustomNavBar
//
//  Created by Florian on 01/02/2022.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(
                    destination:
                        Text("Destination")
                        .customNavBarItems(title: "Title2", subtitle: "Subtitle", backButtonHidden: false)) {
                            Text("Navigate")
                        }
            }
            .customNavBarItems(title: "Title", subtitle: nil, backButtonHidden: true)
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}
