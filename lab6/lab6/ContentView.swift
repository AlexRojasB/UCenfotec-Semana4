//
//  ContentView.swift
//  lab6
//
//  Created by Alexander Rojas Benavides on 9/4/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSquare = false
    
    var body: some View {
        VStack{
                   Button ("Tap Me"){
                    withAnimation {
                        self.isShowingSquare.toggle()
                    }
                   }
            if isShowingSquare{
                Rectangle()
                    .fill(Color.purple)
                    .frame(
                        width: 200,
                        height: 200,
                        alignment: .center)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                    //.transition(.scale)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
