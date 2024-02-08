//
//  ContentView.swift
//  recipy
//
//  Created by Pedro on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    
    let foodImages = [
            "chicken",
            "italian",
            "pasta",
            "hamburger2",
            "tapi"
        ]
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
                ForEach(foodImages, id: \.self) { foodImage in
                    VStack(alignment: .leading){
                        
                        Image(foodImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 360, height: 150)
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading){
                            Text("Food")
                                .fontWeight(.semibold)
                            Text("%0.99 Delivery Fee | 15 - 30 min")
                                .foregroundColor(.gray)
                        }
                        .font(.subheadline)

                    }

                }
        }
        
        
    }
}

#Preview {
    
    ContentView()
}
