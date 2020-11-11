//
//  ContentView.swift
//  Flags
//
//  Created by Nick Nguyen on 11/10/20.
//

import SwiftUI

struct ContentView: View {

  @State private var showModal: Bool = false
  let flags = ["🇺🇸","🏳️‍🌈","🇨🇳","🇬🇧","🇲🇲","🇨🇦","🇰🇷"]

  var body: some View {
    List {
      ForEach(0..<self.flags.count) { index in
        Text(flags[index]).font(.custom("Arial", size: 100))
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
