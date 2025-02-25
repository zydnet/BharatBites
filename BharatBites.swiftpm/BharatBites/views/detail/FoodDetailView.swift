import SwiftUI

struct FoodDetailView: View {
    let food: FoodItem
    @Environment(\.presentationMode) var presentationMode // For back navigation
    @State private var isFavorite = false // Tracks if the food is marked as favorite
    
    var body: some View {
        ZStack {
   
            Color.page3
                .ignoresSafeArea()
            
            VStack {
                // Custom Navigation Bar without title
                SearchBar {
                    presentationMode.wrappedValue.dismiss() // Back action
                }
                
                ScrollView {
                    VStack {
                        ZStack(alignment: .topTrailing) {
                            // Card UI
                            VStack(alignment: .leading, spacing: 12) {
                                // Image
                                Image(food.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 200)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .shadow(radius: 5)

                                // Short description
                                Text(food.name)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Home Background 1"))
                                    .font(.title)

                                Divider()
                                    .padding(.vertical, 4)

                                // Details Section
                                VStack(alignment: .leading, spacing: 10) {
                                    DetailRow(title: "Rich In", content: food.richIn)
                                    DetailRow(title: "Benefits", content: food.description)
                                    DetailRow(title: "Mostly grown in", content: food.foundIn)
                                    DetailRow(title: "About", content: food.stateDetails)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
                            .padding(.horizontal, 16)

                            // Favorite Button
                            Button(action: {
                                isFavorite.toggle()
                            }) {
                                Image(systemName: isFavorite ? "heart.fill" : "heart")
                                    .font(.system(size: 24))
                                    .foregroundColor(isFavorite ? .red : .gray)
                                    .padding(10)
                                    .background(Color.white.opacity(0.8))
                                    .clipShape(Circle())
                                    .shadow(radius: 4)
                                    .padding()
                               
                            }
                        }
                    }
                    .padding(.top, 20)
                    
                }
            }
        }
        .navigationBarHidden(true) // Hide default navigation bar
    }
}

struct DetailRow: View {
    let title: String
    let content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)
            Text(content)
                .font(.body)
                .foregroundColor(.secondary)
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleFood = FoodItem(
            name: "Makhanas",
            richIn: "Protein, antioxidants, promotes heart health",
            description: "Makhanas are rich in protein and antioxidants. They are a great snack option for healthy living.",
            foundIn: "Bihar",
            stateDetails: "Bihar is known for its production of Makhanas, especially in the Mithila region. It contributes to nearly 90% of the world's production.",
            imageName: "makhanas"
        )
        FoodDetailView(food: sampleFood)
    }
}
