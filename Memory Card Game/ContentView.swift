//
//  ContentView.swift
//  Memory Card Game
//
//  Created by Sherrane Watson on 8/5/23.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🌽", "🌶", "🥑", "🍅", "🥐", "🥞", "🥩", "🍆", "🌮", "🌯", "🥨", "🍓", "🍌", "🍍", "🧇", "🍩", "🍕", "🍔", "🎂", "🥓", "🧀", "🍗","🍦", "🍭"]
    @State var emojiCount = 4
    
    var body: some View {
        HStack {
            ForEach(emojis[0..<6], id: \.self) { emoji in CardView(content: emoji)
            }
        }
        
        .padding(.horizontal)
        .foregroundColor(.blue)
        }
    }
    
    
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = isFaceUp
        }
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
