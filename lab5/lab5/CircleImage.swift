//
//  CircleImage.swift
//  lab5
//
//  Created by Alexander Rojas Benavides on 9/4/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("corcovado")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
