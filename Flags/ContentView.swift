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
        HStack {
          Text(flags[index]).font(.custom("Arial", size: 100))
          Text("Flag \(index)")
        }.onTapGesture {
          self.showModal.toggle()
        }
      }

    }.sheet(isPresented: self.$showModal) {
      Text("Flag Selected")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
