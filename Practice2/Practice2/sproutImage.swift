//
//  sproutImage.swift
//  Practice2
//
//  Created by Michelle Lee on 1/11/25.
//

import SwiftUI

struct sproutImage: View {
    var body: some View {
        Image("sprout")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
}

#Preview {
    sproutImage()
}
