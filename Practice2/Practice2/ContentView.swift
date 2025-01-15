//
//  ContentView.swift
//  Practice2
//
//  Created by Michelle Lee on 1/2/25.
//

import SwiftUI


struct ContentView: View {
    @State private var goal: String = ""
    @State private var isEmpty: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                sproutImage()
                Text("What habit do you want to start forming?")
                    .font(.headline)
                
                TextField("Enter your goal here", text: $goal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 50)
                    .padding(.vertical, 5)
                
                NavigationLink(destination: {TimePrompt()},
                               label: {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 8)
                })
                    .background(.green)
                    .cornerRadius(10)
                    .disabled(goal == "")
            }
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
