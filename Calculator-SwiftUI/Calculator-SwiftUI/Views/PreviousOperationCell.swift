//
//  PreviousOperationCell.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/7/21.
//

import SwiftUI

struct PreviousOperationCell: View {
    var historyCalculation: HistoryCalculation
    var body: some View {
            HStack() {
                Spacer()
                VStack(alignment: .trailing) {
                    Text(historyCalculation.operation)
                        .font(.custom("Poppins-Light", size: 20))
                        .foregroundColor(Color.white)
                        .opacity(0.4)
                    Text(historyCalculation.result)
                        .font(.custom("Poppins-Bold", size: 25))
                        .foregroundColor(Color.white)
                }
            }
            .rotationEffect(Angle(degrees: 180))
    }
}

struct PreviousOperationCell_Previews: PreviewProvider {
    static var previews: some View {
        PreviousOperationCell(historyCalculation: HistoryCalculation(operation: "256.6 + 9.5", result: "269.1"))
    }
}
