//
//  ExtractedFunctions.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 13.01.2024.
//

import SwiftUI

struct ExtractedFunctions: View {

  @State var backgroundColor : Color = Color.pink
  var body: some View {
    ZStack{
      //Background
      backgroundColor.edgesIgnoringSafeArea(.all)
      //Content
      contentLayer
    }
  }
  var contentLayer : some View {
    VStack{
      Text("Title")
        .font(.largeTitle)

      Button("PRESS ME"){
        //            backgroundColor = Color.accentColor
        changeColor()
      }
      .font(.headline)
      .foregroundColor(.white)
      .padding()
      .background(Color.black)
      .cornerRadius(10)
    }
  }
  func changeColor() {
    backgroundColor = Color.gray
  }

}

#Preview {
    ExtractedFunctions()
}
