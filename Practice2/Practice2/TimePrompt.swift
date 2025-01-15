//
//  TimePrompt.swift
//  Practice2
//
//  Created by Michelle Lee on 1/2/25.
//

import SwiftUI

struct TimePrompt: View {
    @State private var time: String = ""
    
    @State var animate: Bool = false
    let animation: Animation = Animation.interpolatingSpring(duration: 1.0).repeatForever(autoreverses: true)
    
    var body: some View {
        //NavigationView {
        
            VStack {
                GeometryReader { geo in
                    sproutImage()
                        .scaleEffect(animate ? 1.1 : 1.0)
                        .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.5)
                        .onAppear {
                            withAnimation(animation) {
                                animate.toggle()
                            }
                        }
                }
                Text("How often do you want to practice this habit?")
                    .font(.headline)
                HStack {
                    Text("Every")
                    TextField("2", text: $time)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 50)
                    Text("Days")
                }
                NavigationLink(destination: {PostQuestions()},
                               label: {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 8)
                })
                    .background(.green)
                    .cornerRadius(10)
                    .disabled(time == "")
            }
            .padding(.top, 200)
            .padding(.bottom, 400)
            .padding(.horizontal, 20)
        
        //}
    }
}

#Preview {
    TimePrompt()
}
