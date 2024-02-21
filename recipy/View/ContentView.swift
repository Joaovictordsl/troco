//
//  ContentView.swift
//  recipy
//
//  Created by Pedro on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        ZStack {
            Image("hamburger2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .frame(width: 400, height: 760)
        }
    }
}

#Preview {
    ContentView()
}
