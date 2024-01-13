//
//  UseOfBinding.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 14.01.2024.
//

import SwiftUI

struct UseOfBinding: View {

  @State var backgroundColor: Color = Color.green
  @State var title : String = "Title"

  var body: some View {
    ZStack{
      backgroundColor
        .edgesIgnoringSafeArea(.all)

      VStack {
        Text(title)
          .foregroundStyle(.white)
        ButtonView(backgroundColor: $backgroundColor, title: $title)
      }
    }
  }
}

struct ButtonView: View {

  @Binding var backgroundColor: Color
  @State var buttonColor : Color = Color.blue
  @Binding var title : String

  var body: some View{

    Button("button"){
      title = "THIS TITLE CHANGED"
      backgroundColor = Color.purple
      buttonColor = Color.red
    }
    .foregroundStyle(.white)
    .padding()
    .padding(.horizontal)
    .background(buttonColor)
    .cornerRadius(16)
  }
}

#Preview {
  UseOfBinding()
}
