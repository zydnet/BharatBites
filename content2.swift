//
//  content2.swift
//  testb
//
//  Created by user on 21/02/25.
//

import SwiftUI

struct Content: View {
    @State private var searchText = "" // State variable for search bar
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Search Bar
                HStack {
                    TextField("Search for food...", text: $searchText)
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 16)
                }
                .padding(.top, 10)
                
                // Scrollable Cards
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(filteredFoodItems) { food in
                            NavigationLink(destination: FoodDetailView(food: food)) { // Navigate to FoodDetailView
                                FoodCard(food: food)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
            .navigationTitle("Explore Foods")
            .background(Color.background.ignoresSafeArea())
        }
    }
    
    // Filtered Food Items Based on Search Text
    private var filteredFoodItems: [FoodItem] {
        if searchText.isEmpty {
            return foodItems
        } else {
            return foodItems.filter { $0.name.lowercased().contains(searchText.lowercased()) }
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
                
                Text(food.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
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
