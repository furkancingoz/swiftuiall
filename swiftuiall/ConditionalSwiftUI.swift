//
//  ConditionalSwiftUI.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 14.01.2024.
//

import SwiftUI

struct ConditionalSwiftUI: View {

  @State private var showCircle : Bool = false
  @State private var showRectangele : Bool = false
  var body: some View {
    VStack(spacing:20){

      Button("Circle button: \(showCircle.description)"){
        showCircle.toggle()
      }

      Button("Rectangle Button: \(showRectangele.description)") {
        showRectangele.toggle()
      }

      if showCircle  {
        Circle()
          .frame(width: 100,height: 100)
      } else if showRectangele {
        Rectangle()
          .frame(width: 100,height: 100)
      }
      Spacer()
    }
  }
}

#Preview {
  ConditionalSwiftUI()
}
