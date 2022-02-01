//
//  CustomNavBarView.swift
//  CustomNavBar
//
//  Created by Florian on 01/02/2022.
//

import SwiftUI

struct CustomNavBarView: View {
    var body: some View {
        HStack {
            backButton
            Spacer()
            titleSection
            Spacer()
            backButton
                .opacity(0)
        }
        .padding()
        .accentColor(.white)
        .foregroundColor(.white)
        .font(.headline)
        .background(
            Color.blue
                .ignoresSafeArea(edges: .top))
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView()
            Spacer()
        }
    }
}

extension CustomNavBarView {
    
    private var backButton: some View {
        Button {
            
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 4) {
            Text("Title")
                .font(.title)
                .fontWeight(.semibold)
            Text("Description")
        }
    }
}
