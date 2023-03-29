//  LogoView.swift
//  ClapMe
//
//  Created by Aleksej Shapran on 29.03.23

import SwiftUI

struct CircleImage: View {
    
    var body: some View {
        
        Image("starbucks_prev")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
