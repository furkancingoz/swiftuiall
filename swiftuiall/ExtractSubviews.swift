//
//  ExtractSubviews.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 13.01.2024.
//

import SwiftUI

struct ExtractSubviews: View {
  var body: some View {
    ZStack{
      Color(Color.blue).edgesIgnoringSafeArea(.all)

      //Content
      contentLayer
    }
  }
    var contentLayer: some View {
      HStack {
        ExtractedView(title: "elma", count: 1, color:.red)

        ExtractedView(title: "elma", count: 1, color:.green)
        ExtractedView(title: "portakal", count: 1, color:.orange)
        ExtractedView(title: "muz", count: 1, color:.yellow)
      }
    }
}

#Preview {
  ExtractSubviews()
}

struct ExtractedView: View {

  let title : String
  let count : Int
  let color : Color

  var body: some View {
    VStack{
      Text("\(count)")
      Text(title)
    }
    .padding()
    .background(color)
    .cornerRadius(10)
  }
}
