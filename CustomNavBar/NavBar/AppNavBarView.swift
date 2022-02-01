//
//  AppNavBarView.swift
//  CustomNavBar
//
//  Created by Florian on 01/02/2022.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("Titre 2")
                } label: {
                    Text("Navigate")
                }

            }
            .navigationTitle("Title")
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}
