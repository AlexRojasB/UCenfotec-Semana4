//
//  ContentView.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 20.0) {
                List(1..<5) {item in
                    PreviousOperationCell()
                        .listRowBackground(Color("BackgroundColor"))
                }
                .rotationEffect(Angle(degrees: 180))
                
                
                
                Text("2590 + 45")
                    .font(.custom("Poppins-Bold", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 25.0)
                    .frame(maxWidth: .infinity, maxHeight: 60, alignment: .trailing)
                HStack(alignment: .center, spacing: 20.0)  {
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("AC")
                    })
                    .buttonStyle(CircleTextStyle(textSize: CGFloat(35)))
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("+/-")
                    })
                    .buttonStyle(CircleTextStyle(textSize: CGFloat(35)))
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("%")
                    })
                    .buttonStyle(CircleTextStyle(textSize: CGFloat(45)))
                    
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "dividerBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0)  {
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("7")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("8")
                    })
                    .buttonStyle(CircleTextStyle())
                    
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("9")
                    })
                    .buttonStyle(CircleTextStyle())
                    
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "multiplierBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0)  {
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("4")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("5")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("6")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "minusBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0) {
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("1")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("2")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text("3")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "plusBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0) {
                    Button("0"){
                        
                    }
                    .padding(.leading)
                    .frame(width: 180, height: 80, alignment: .leading)
                    .background(Color("ButtonNumberColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .font(.custom("Poppins-Medium", size: 50, relativeTo: .headline))
                    .foregroundColor(.white)
                    
                    Button(action: {
                        print("Edit button was tapped")
                    },  label: {
                        Text(".")
                    })
                    .buttonStyle(CircleTextStyle())
                    
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        Image("equalBtn")
                  
                    .frame(width: 80, height: 80, alignment: .center)
                    .background(Color("AccentColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                }.padding(.bottom, 10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
