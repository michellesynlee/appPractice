//
//  PostQuestions.swift
//  Practice2
//
//  Created by Michelle Lee on 1/2/25.
//

import SwiftUI

struct PostQuestions: View {
    @State private var username: String = ""
    var body: some View {
        VStack {
            Text(Date.now, format: .dateTime.day().month().year())
                .font(.title2)
                .padding()
            
            withAnimation(.easeInOut(duration: 1)) {
                Text("Welcome! Let's take your first photo!")
            }
        }
        
        
    }
}

#Preview {
    PostQuestions()
}
