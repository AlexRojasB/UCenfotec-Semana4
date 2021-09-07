//
//  CircleButton.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/6/21.
//

import SwiftUI

struct CircleTextStyle: ButtonStyle {
    var textSize = CGFloat(50)
    func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color("ButtonNumberColor"))
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .font(.custom("Poppins-Medium", size: textSize, relativeTo: .headline))
                .foregroundColor(.white)
        }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
