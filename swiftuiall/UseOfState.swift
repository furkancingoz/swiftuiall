//
//  UseOfState.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 13.01.2024.
//

import SwiftUI

struct UseOfState: View {
  
  @State var backgroundColor : Color = Color.green
  @State var myTitle : String = "My title"
  @State var count : Int = 0
  
  var body: some View {
    ZStack{
      backgroundColor
        .edgesIgnoringSafeArea(.all)
      
      VStack(spacing: 20){
        Text(myTitle)
          .font(.title)
        Text("Count : \(count)")
          .font(.headline)
          .underline()
        
        HStack(spacing: 20){
          Button("Button 1") {
            backgroundColor = .red
            myTitle = "B 1 PRESSED"
            count = count + 1
            
          }
          Button("Button 2") {
            backgroundColor = .pink
            myTitle = "B 2 PRESSED"
            count = count + 1
          }
          
          Button("Reset count") {
            backgroundColor = .orange
            myTitle = "reseted count"
            count = 0
          }
        }.foregroundStyle(.white)
      }
    }
  }
}
#Preview {
  UseOfState()
}
