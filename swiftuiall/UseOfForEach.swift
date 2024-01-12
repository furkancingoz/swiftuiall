//
//  UseOfForEach.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 12.01.2024.
//

import SwiftUI

struct  UseOfForEach: View {

  let data: [String] = ["Hi","Hello","Hey","Merhaba","Selam"]
  let myStr: String = "Hello"

  var body: some View {
    VStack{
      ForEach(data.indices) {index in
        Text("\(data[index])")
      }
//      ForEach(0..<10) { index in
//        HStack {
//          Circle()
//            .frame(width: 30,height: 30)
//          Text("Index is: \(index)")
        }
      }
    }



#Preview {
  UseOfForEach()
}
