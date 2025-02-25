import SwiftUI

struct Content: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                HStack {
                    TextField("Search for food or nutrients...", text: $searchText)
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 16)
                        .tint(.black)
                }
                .padding(.top, 10)
                
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(filteredFoodItems) { food in
                            NavigationLink(destination: FoodDetailView(food: food)) {
                                FoodCard(food: food)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .background(Color.HomeBackground.ignoresSafeArea())
        }
    }
    
    private var filteredFoodItems: [FoodItem] {
        if searchText.isEmpty {
            return foodItems
        } else {
            return foodItems.filter { $0.searchTerms.contains(searchText.lowercased()) }
        }
    }
}

// MARK: - Food Card View
struct FoodCard: View {
    let food: FoodItem
    
    var body: some View {
        HStack {
            Image(food.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(food.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(food.richIn)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
            .preferredColorScheme(.light)
    }
}
