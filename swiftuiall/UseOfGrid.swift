//
//  UseOfGrid.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 12.01.2024.
//

import SwiftUI

struct UseOfGrid: View {

  let columns: [GridItem] = [
    GridItem(.flexible(),spacing: nil,alignment: nil),
    GridItem(.flexible(),spacing: nil,alignment: nil),
    GridItem(.flexible(),spacing: nil,alignment: nil)
  ]

  var body: some View {
    //Instagram grid example
    ScrollView{
      Rectangle()
        .fill(Color.white)
        .frame(height: 300)
      LazyVGrid(columns: columns, content: {
        ForEach(1..<25) { i in
          Rectangle()
            .frame(height: 150)
        }
      })
    }//: Instagram

    //MARK: - Grid traning
//          ScrollView {
//      
//            Rectangle()
//              .fill(Color.orange)
//              .frame(height: 400)
//      
//            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders], content: {
//              Section(header:
//                        Text("Section 1")
//                .foregroundStyle(.white)
//                .font(.title)
//                .frame(maxWidth: .infinity,alignment: .leading)
//                .background(Color.blue)
//                .padding()
//      
//              ) {
//                ForEach(0..<20) { i in
//                  Rectangle()
//                    .frame(height: 150)
//                }
//              }
//              Section(header:
//                        Text("Section 2")
//                .foregroundStyle(.white)
//                .font(.title)
//                .frame(maxWidth: .infinity,alignment: .leading)
//                .background(Color.red)
//                .padding()
//      
//              ) {
//                ForEach(0..<20) { i in
//                  Rectangle()
//                    .fill(Color.green)
//                    .frame(height: 150)
//                }
//              }
//              Section(header:
//                        Text("Section 3")
//                .foregroundStyle(.white)
//                .font(.title)
//                .frame(maxWidth: .infinity,alignment: .leading)
//                .background(Color.black)
//                .padding()
//      
//              ) {
//                ForEach(0..<20) { i in
//                  Rectangle()
//                    .fill(Color.purple)
//                    .frame(height: 150)
//                }
//              }
//      
//            })
//          }

  }
}
#Preview {
  UseOfGrid()
}
