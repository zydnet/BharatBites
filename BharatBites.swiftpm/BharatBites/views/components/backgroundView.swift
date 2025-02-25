//
//  backgroundView.swift
//  BharatBites
//
//  Created by user on 22/02/25.
//
import SwiftUI

struct backgroundView: View {
    var imageName: String

    var body: some View {
        ZStack {
            // BACKGROUND COLOR
            Color.background
                .ignoresSafeArea()
            
            // BACKGROUND IMAGE
            Image(imageName) 
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .offset(x: 150)
                .ignoresSafeArea()
                .opacity(0.9)
        }
    }
}

struct backgroundView_Previews: PreviewProvider {
    static var previews: some View {
        backgroundView(imageName: "Background")
            .preferredColorScheme(.dark)
    }
}

