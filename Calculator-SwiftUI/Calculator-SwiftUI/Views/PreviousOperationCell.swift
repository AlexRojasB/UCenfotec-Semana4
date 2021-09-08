//
//  PreviousOperationCell.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/7/21.
//

import SwiftUI

struct PreviousOperationCell: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            HStack() {
                Spacer()
                VStack(alignment: .trailing) {
                    Text("256.6 + 9.5")
                        .font(.custom("Poppins-Light", size: 14))
                        .foregroundColor(Color("ButtonOperationColor"))
                    Text("269.1")
                        .font(.custom("Poppins-Bold", size: 25))
                        .foregroundColor(Color.white)
                }
            }
            .rotationEffect(Angle(degrees: 180))
        }
    }
}

struct PreviousOperationCell_Previews: PreviewProvider {
    static var previews: some View {
        PreviousOperationCell()
    }
}
