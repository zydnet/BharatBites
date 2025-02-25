//
//  SearchBar.swift
//  BharatBites
//
//  Created by user on 22/02/25.
//
import SwiftUI

struct SearchBar: View {
    let onBack: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                // back
                Button(action: {
                    onBack()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 30))
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                }
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.top, 10)
        }
        .frame(height: 60) // Adjust height as needed
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("BackgroundColor"), Color("BackgroundColor").opacity(0.8)]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(onBack: {})
            .background(Color.white)
            .previewLayout(.sizeThatFits)
    }
}

