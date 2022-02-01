//
//  CustomNavBarContainerView.swift
//  CustomNavBar
//
//  Created by Florian on 01/02/2022.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        defaultNavView
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                Text("Hello")
                    .foregroundColor(.white)
            }
        }
    }
}

extension CustomNavBarContainerView {
    
    private var defaultNavView: some View {
        VStack(spacing: 0) {
            CustomNavBarView()
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
