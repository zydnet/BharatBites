//
//  superfoodDatabase.swift
//  BharatBites
//
//  Created by user on 22/02/25.
//

import Foundation

// MARK: - Food Item Model
struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let richIn: String
    let description: String
    let foundIn: String
    let stateDetails: String
    let imageName: String
    var searchTerms: String {
        return "\(name) \(richIn) \(description) \(foundIn)".lowercased()
    }
}

// MARK: - Sample Food Data
let foodItems = [
    FoodItem(name: "Makhanas", richIn: "Protein, antioxidants, promotes heart health", description: "Rich in protein and antioxidants.", foundIn: "Bihar", stateDetails: "Bihar, especially the Mithila region, is the largest producer of Makhanas in the whole World and the production is about 90%. The unique climate and water bodies in this area make it ideal for fox nut cultivation.", imageName: "makhanas"),
    FoodItem(name: "Ragi", richIn: "Calcium", description: "Aids in bone health and manages diabetes.", foundIn: "Karnataka", stateDetails: "Karnataka is the largest producer of Ragi (finger millet) in India. The state promotes Ragi as a superfood, and it is commonly consumed as Ragi mudde, a staple food of Karnataka.", imageName: "ragi"),
    FoodItem(name: "Coconut", richIn: "Healthy fats", description: "Provides healthy fats and boosts energy.", foundIn: "Kerala", stateDetails: "Kerala is often called 'God’s Own Country' and is named after 'Kera', meaning coconut tree. The state is a leading producer of coconuts, which are used in food, oil production, and coir industries.", imageName: "coconut"),
    
    FoodItem(name: "Ghee", richIn: "Healthy fats", description: "Improves digestion and strengthens immunity.", foundIn: "Rajasthan", stateDetails: "Rajasthan is famous for its traditional dairy products, especially ghee, which is widely used in Rajasthani cuisine like Dal Baati Churma. The desert climate supports cattle rearing, leading to high-quality ghee production.", imageName: "ghee"),
    
    FoodItem(name: "Amla", richIn: "Vitamin C", description: "Boosts immunity and promotes healthy skin.", foundIn: "Uttar Pradesh", stateDetails: "Pratapgarh district in Uttar Pradesh is known as the 'Amla Bowl of India'. The state leads in Amla production, providing high-quality fruits used in Ayurvedic medicines.", imageName: "amla"),
    
    FoodItem(name: "Turmeric", richIn: "Anti-inflammatory properties, brain function support", description: "Anti-inflammatory and boosts brain function.", foundIn: "Andhra Pradesh", stateDetails: "Andhra Pradesh is one of the largest producers of turmeric in India, particularly in the Kadapa and Nizamabad districts. The vibrant yellow spice is an essential part of Indian cuisine and traditional medicine.", imageName: "turmeric"),
    
    
    
    FoodItem(name: "Jackfruit", richIn: "Fiber", description: "Supports digestion and is a meat substitute for vegans.", foundIn: "Kerala", stateDetails: "Kerala declared jackfruit as its official state fruit due to its widespread cultivation. It is used in a variety of traditional Kerala dishes and is an important part of the state's cuisine.", imageName: "jackfruit"),
    
    
    
    FoodItem(name: "Flax Seeds", richIn: "Omega-3 fatty acids", description: "Rich in antioxidants and fiber.", foundIn: "Madhya Pradesh", stateDetails: "Madhya Pradesh is a major producer of flax seeds, locally known as 'Alsi'. These seeds are an essential part of the state's agricultural output and are widely used in Indian diets for their health benefits.", imageName: "flaxseeds"),
    
    FoodItem(name: "Spinach", richIn: "Potassium and magnesium", description: "Supports heart health.", foundIn: "Punjab", stateDetails: "Punjab is famous for its lush green spinach farms, and it is a key ingredient in the popular dish 'Sarson da Saag', a staple in Punjabi cuisine.", imageName: "spinach"),
    
    FoodItem(name: "Sattu", richIn: "Protein and fiber", description: "Aids weight loss.", foundIn: "Bihar", stateDetails: "Sattu is a staple in Bihar’s diet, made by grinding roasted Bengal gram. It is consumed in drinks, parathas, and laddoos, offering high nutrition at an affordable price.", imageName: "sattu"),
    
    FoodItem(name: "Drumsticks", richIn: "Immunity-boosting properties", description: "Regulates blood sugar levels.", foundIn: "Tamil Nadu", stateDetails: "Tamil Nadu is known for its large-scale cultivation of drumsticks, a key ingredient in South Indian curries and sambars. The Moringa tree, which produces drumsticks, is widely grown in the state.", imageName: "drumsticks"),
    
    FoodItem(name: "Yams", richIn: "Antioxidants", description: "Supports brain function and blood sugar regulation.", foundIn: "Odisha", stateDetails: "Odisha produces a significant amount of yams, particularly in tribal regions where they are a traditional dietary staple. The state promotes yam cultivation as a means to boost rural income.", imageName: "yams"),
    
    FoodItem(name: "Sabudana", richIn: "Energy", description: "Gluten-free and aids digestion.", foundIn: "Maharashtra", stateDetails: "Maharashtra is the leading producer of sabudana (sago), which is made from tapioca roots. It is a key ingredient in fasting foods like sabudana khichdi.", imageName: "sabudana"),
    
    FoodItem(name: "Betel Leaf", richIn: "Detoxifying properties", description: "Improves digestion.", foundIn: "West Bengal", stateDetails: "West Bengal is famous for its high-quality betel leaves, particularly from the districts of Howrah and Nadia. Betel leaves (paan) have cultural and religious significance in the state.", imageName: "betelleaf"),
    
    FoodItem(name: "Almonds", richIn: "Protein and Vitamin E", description: "Packed with healthy fats.", foundIn: "Himachal Pradesh", stateDetails: "Himachal Pradesh is known for its high-altitude almond orchards, especially in the districts of Kinnaur and Chamba. The cold climate helps produce high-quality almonds.", imageName: "almonds"),
    
    FoodItem(name: "Chickpeas", richIn: "Protein and fiber", description: "Supports gut health.", foundIn: "Madhya Pradesh", stateDetails: "Madhya Pradesh is India's largest producer of chickpeas (chana). The crop is essential in the state’s agricultural economy and is widely used in Indian households for making chana dal and besan.", imageName: "chickpeas")
]
