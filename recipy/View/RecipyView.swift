//
//  RecipyView.swift
//  recipy
//
//  Created by Pedro on 08/02/24.
//

import SwiftUI

struct RecipyView: View {
    
    @State var showModal = false
    
    let recipyData = RecipyData()
    
    
    var body: some View {
        
        Text("Uber Eats")
            .font(.title2)
        
        
            
            ScrollView (showsIndicators: false) {
                
                ForEach(recipyData.foodImages, id: \.key) { foodImage in
                    
                    Button {
                        showModal = true
                        
                    } label: {
//                        NavigationLink(destination: ContentView()) {
                            VStack {
                                Image(foodImage.key)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 360, height: 160)
                                    .cornerRadius(10)
                                VStack (alignment: .leading, spacing: 2) {
                                    Text(foodImage.value)
                                        .font(.subheadline)
                                        .frame(width: 360, height: 20, alignment: .leading)
                                    Text(foodImage.com)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(width: 360, height: 20, alignment: .leading)
                                }
                            }
                        
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                ModalView()
            }
        
        

        
    }
}

struct ModalView: View {
    
    let recipyData = RecipyData()
    @State private var selectedFoodImage: String? = nil

    var body: some View {
        VStack {
//
    }
}

#Preview {
    RecipyView()
}
