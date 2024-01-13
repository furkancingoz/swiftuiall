//
//  UseOfBinding.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 14.01.2024.
//

import SwiftUI

struct UseOfBinding: View {
  @State var backgroundColor: Color = Color.green
    var body: some View {
      ZStack{
        backgroundColor
          .edgesIgnoringSafeArea(.all)

        Button("button"){
          backgroundColor = Color.purple
        }
        .foregroundStyle(.white)
        .padding()
        .padding(.horizontal)
        .background(Color.blue)
        .cornerRadius(16)
      }
    }
}

#Preview {
    UseOfBinding()
}
