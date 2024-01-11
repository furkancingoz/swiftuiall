//
//  Initializer.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 11.01.2024.
//

import SwiftUI

struct InitializerAndEnums: View {
  let applecount: Int
  let fruit: String
  let backgroundColor: Color

  init(applecount: Int, fruit: Fruit) {
    self.applecount = applecount
//    self.fruit = fruit
//    self.backgroundColor = backgroundColor
    
    if fruit == .apple {
      self.backgroundColor = .red
      self.fruit = "Apple"
    } else {
      self.backgroundColor = .orange
      self.fruit = "Orange"
    }
  }

  enum Fruit {
    case apple
    case orange
  }

    var body: some View {
      VStack(spacing: 10){
        Text("\(applecount)")
          .font(.largeTitle)
          .foregroundStyle(.white)

        Text(fruit)
          .font(.headline)
          .foregroundStyle(.white)
      }
      .frame(width: 150,height: 150)
      .background(backgroundColor)
      .cornerRadius(10)
    }
}

#Preview {
  HStack{
    InitializerAndEnums(applecount: 10, fruit: .orange)
    InitializerAndEnums(applecount: 9, fruit: .apple)
  }
}
