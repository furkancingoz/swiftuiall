//
//  UseOfButton.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 12.01.2024.
//

import SwiftUI

struct UseOfButton: View {

  @State var title: String = "This is my title"

  var body: some View {
    VStack(spacing: 20) {
      Text(title)

      Button("Press me!") {
        self.title = "Press me button tapped"
          .uppercased()
      }
      .accentColor(.red)

      Button(action: {
        self.title = "Save button tapped".uppercased()
          .uppercased()
      }, label: {
        Text("Save".uppercased())
          .font(.headline)
          .fontWeight(.semibold)
          .foregroundStyle(.white)
          .padding()
          .padding(.horizontal,10)
          .background(
            Color.blue
              .cornerRadius(10)
              .shadow(radius: 10)
          )
      })

      Button(action: {
        self.title = "heart button tapped"
          .uppercased()
      }, label: {
        Circle()
          .fill(Color.white)
          .frame(width: 75,height: 75)
          .shadow(radius: 10)
          .overlay(
            Image(systemName: "heart.fill")
              .font(.largeTitle)
              .foregroundStyle(.red)
          )
      })

      Button(action: {
        self.title = "Finish button tapped"
          .uppercased()
      }, label: {
        Text("Finish".uppercased())
          .font(.caption)
          .bold()
          .foregroundStyle(.gray)
          .padding()
          .padding(.horizontal,10)
          .background(
            Capsule()
              .stroke(Color.gray, lineWidth: 2.0)
          )
      })

    }
  }
}

#Preview {
  UseOfButton()
}
