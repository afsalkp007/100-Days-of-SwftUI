//
//  ContentView.swift
//  Practice
//
//  Created by Afsal on 28/09/2024.
//

import SwiftUI

struct Title: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundStyle(.white)
      .padding()
      .background(.blue)
      .clipShape(.rect(cornerRadius: 10))
  }
}

extension View {
  func titleStyle() -> some View {
    modifier(Title())
  }
}

struct Watermark: ViewModifier {
  var text: String
  
  func body(content: Content) -> some View {
    ZStack(alignment: .bottomTrailing) {
      content
      
      Text(text)
        .font(.caption)
        .foregroundStyle(.white)
        .padding(5)
        .background(.black)
    }
  }
}

extension View {
  func watermarked(with text: String) -> some View {
    modifier(Watermark(text: text))
  }
}

struct Practice: View {
    var body: some View {
      Color.blue
        .frame(width: 300, height: 200)
        .watermarked(with: "hacking with swift")
    }
}

#Preview {
  Practice()
}
