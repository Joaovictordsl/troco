//
//  SwiftUIView.swift
//  recipy
//
//  Created by Pedro on 08/02/24.
//

import SwiftUI

struct SwiftUIView: View {
    
    let foodImages: [(key: String, value: String)] = [
            ("hamburger2", "Hamburger"),
            ("italian", "Italian"),
            ("tapi", "Tapioca"),
            ("chicken", "Galinha"),
            ("pasta", "Macarrao")
        ]
    
    
    var body: some View {
        
        ScrollView (showsIndicators: false) {
            VStack {
                ForEach(foodImages, id: \.key) { foodImage in
                    Button {
                        print(foodImage.value)
                    } label: {
                        Image(foodImage.key)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 360, height: 150)
                            .cornerRadius(10)
                    }
                    
                }
            }
            
            
            
        }
        
    }
}

#Preview {
    SwiftUIView()
}
