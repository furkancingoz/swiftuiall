//
//  UseOfScrollView.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 12.01.2024.
//

import SwiftUI

struct UseOfScrollView: View {
  var body: some View {
    ScrollView{
      VStack{
        ForEach(0..<10) { i in
          ScrollView(.horizontal ,showsIndicators: false, content: {
            HStack {
              ForEach(0..<20) { ix in
                RoundedRectangle(cornerRadius: 25)
                  .fill(Color.white)
                  .frame(width: 200,height: 150)
                  .shadow(radius: 10)
                  .padding()
              }
            }
          })
        }
      }
    }
  }
}


//    ScrollView(.horizontal ,showsIndicators: false, content:{
//      HStack{
//        ForEach(0..<50) { index in
//          Rectangle()
//            .fill(Color.orange)
//            .frame(width:300, height:300)
//        }
//      }
//    })
#Preview {
  UseOfScrollView()
}
