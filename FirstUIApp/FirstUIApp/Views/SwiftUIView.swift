//
//  SwiftUIView.swift
//  FirstUIApp
//
//  Created by Ann on 20.08.2021.
//

import SwiftUI

struct SwiftUIView: View {
    var image: Image
    var body: some View {
            image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(image: Image("turtlerock"))
    }
}
