//
//  ContentView.swift
//  Calculator-SwiftUI
//
//  Created by Alexander Rojas Benavides on 9/6/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 20.0) {
               
                ScrollView {
                    ForEach(viewModel.historyCalculations.indices.reversed(), id: \.self) { index in
                        PreviousOperationCell(historyCalculation: viewModel.historyCalculations[index])
                    }
                }
                .rotationEffect(Angle(degrees: 180))
                .padding(.trailing, 25)
                
                Text(viewModel.displayText)
                    .font(.custom("Poppins-Bold", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 25.0)
                    .frame(maxWidth: .infinity, maxHeight: 60, alignment: .trailing)
                HStack(alignment: .center, spacing: 20.0)  {
                    Button(action: {
                        viewModel.InitialState()
                    },  label: {
                        Text("AC")
                    })
                    .buttonStyle(CircleTextStyle(textSize: CGFloat(35)))
                    Button(action: {
                        viewModel.ChangeSignNumber()
                    },  label: {
                        Text("+/-")
                    })
                    .buttonStyle(CircleTextStyle(textSize: CGFloat(35)))
                    Button(action: {
                        viewModel.PerformPercentage()
                    },  label: {
                        Text("%")
                    })
                    .buttonStyle(CircleTextStyle(textSize: CGFloat(45)))
                    
                    Button(action: {
                        viewModel.AddOperation(operation: OperationEnum.divide)
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "dividerBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0)  {
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 7)
                    },  label: {
                        Text("7")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 8)
                    },  label: {
                        Text("8")
                    })
                    .buttonStyle(CircleTextStyle())
                    
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 9)
                    },  label: {
                        Text("9")
                    })
                    .buttonStyle(CircleTextStyle())
                    
                    Button(action: {
                        viewModel.AddOperation(operation: OperationEnum.multiply)
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "multiplierBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0)  {
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 4)
                    },  label: {
                        Text("4")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 5)
                    },  label: {
                        Text("5")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 6)
                    },  label: {
                        Text("6")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        viewModel.AddOperation(operation: OperationEnum.substract)
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "minusBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0) {
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 1)
                    },  label: {
                        Text("1")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 2)
                    },  label: {
                        Text("2")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        viewModel.GetUserInput(inputNumber: 3)
                    },  label: {
                        Text("3")
                    })
                    .buttonStyle(CircleTextStyle())
                    Button(action: {
                        viewModel.AddOperation(operation: OperationEnum.sum)
                    },  label: {})
                    .buttonStyle(CircleImageStyle(imageName: "plusBtn"))
                }
                
                HStack(alignment: .center, spacing: 20.0) {
                    Button("0"){
                        viewModel.GetUserInput(inputNumber: 0)
                    }
                    .padding(.leading)
                    .frame(width: 180, height: 80, alignment: .leading)
                    .background(Color("ButtonNumberColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .font(.custom("Poppins-Medium", size: 50, relativeTo: .headline))
                    .foregroundColor(.white)
                    
                    Button(action: {
                        viewModel.AddDecimal()
                    },  label: {
                        Text(".")
                    })
                    .buttonStyle(CircleTextStyle())
                    
                    Button(action: {
                        viewModel.PerformOperation()
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
