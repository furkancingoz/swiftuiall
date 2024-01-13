//
//  ContentView.swift
//  swiftuiall
//
//  Created by Furkan Cingöz on 11.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          InitializerAndEnums(applecount: 3, fruit: .apple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
