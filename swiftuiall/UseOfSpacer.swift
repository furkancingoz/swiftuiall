//
//  UseOfSpacer.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 12.01.2024.
//

import SwiftUI

struct UseOfSpacer: View {
  var body: some View {
    VStack {
      HStack(spacing: 0){

        Image(systemName: "xmark")
        Spacer()
          .frame(height: 10)
          .background(Color.orange)
        Image(systemName: "gear")

      }
      .font(.title)
      //.background(Color.yellow)
      .padding(.horizontal)
      //.background(Color.blue)
      Spacer()
        .frame(width: 10)
       .background(Color.orange)

      Rectangle()
        .frame(height: 55)

    }
    //.background(Color.green)

  }

}
//        Spacer(minLength: 0)
//          .frame(height: 10)
//          .background(Color.orange)
//
//        Rectangle()
//          .frame(width: 50,height: 50)
//
//        Spacer()
//          .frame(height: 10)
//          .background(Color.orange)
//
//        Rectangle()
//          .fill(Color.red)
//          .frame(width: 50,height: 50)
//
//        Spacer()
//          .frame(height: 10)
//          .background(Color.orange)
//
//        Rectangle()
//          .fill(Color.green)
//          .frame(width: 50,height: 50)
//
//        Spacer(minLength: 0)
//          .frame(height: 10)
//          .background(Color.orange)
#Preview {
  UseOfSpacer()
}
