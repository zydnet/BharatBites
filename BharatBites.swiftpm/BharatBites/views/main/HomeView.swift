import SwiftUI

struct HomeView: View {
    @State private var navigateToContent = false
    
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            backgroundView(imageName: "Background")
            
            VStack(spacing: 2) {
                Text(attributedBharatBites)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                
                Text(attributedSubText)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text(attributedBottom)
                    .font(.headline)
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
            }
            .padding(.horizontal, 20)
        }
        .onTapGesture {
            navigateToContent = true
        }
        .fullScreenCover(isPresented: $navigateToContent) {
            Content()
        }
    }
    
    private var attributedBharatBites: AttributedString {
        var string = AttributedString("BharatBites")
        
        if let range = string.range(of: "Bharat") {
            string[range].font = .system(size: 36, weight: .bold)
            string[range].foregroundColor = .white
        }
        
        if let range = string.range(of: "Bites") {
            string[range].font = .system(size: 36, weight: .thin)
            string[range].foregroundColor = Color.white.opacity(0.8)
        }
        
        return string
    }
    
    private var attributedSubText: AttributedString {
        var string = AttributedString("because your health is important")
        
        string.font = .title2.italic()
        string.foregroundColor = Color.white.opacity(0.8)
        
        return string
    }
    
    private var attributedBottom: AttributedString {
        var string = AttributedString("Tap Anywhere")
        
        string.font = .headline.weight(.semibold)
        string.foregroundColor = Color.white.opacity(0.7)
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
