//
//  ContentView.swift
//  recipy
//
//  Created by Pedro on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    
    var foodImages = [
        "chicken",
        "hamburger2",
        "italian",
        "pasta",
        "tapi"
        ]
    
    
    var body: some View {
        
        Text("Uber Eats")
            .font(.title2)
        
        
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(foodImages, id: \.self) { foodImage in
                    
                    Image(foodImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 360, height: 180)
                        .cornerRadius(10.0)
                    Text("Food | $12.99")
                        .font(.subheadline)
                        

                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
