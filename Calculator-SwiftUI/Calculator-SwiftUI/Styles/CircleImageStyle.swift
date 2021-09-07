//
//  CircleImage.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/6/21.
//

import SwiftUI

struct CircleImageStyle: ButtonStyle {
    let imageName: String
    func makeBody(configuration: Configuration) -> some View {
        Image(imageName)
            .frame(width: 80, height: 80, alignment: .center)
            .background(Color("ButtonOperationColor"))
            .clipShape(RoundedRectangle(cornerRadius: 40))
       }
  
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
