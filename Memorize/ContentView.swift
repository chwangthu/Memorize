//
//  ContentView.swift
//  Memorize
//
//  Created by Chen Wang on 2020/5/31.
//  Copyright © 2020 Chen Wang. All rights reserved.
//

import SwiftUI

struct ContentView: View { //ContentView behaviors like a view
    var viewModel: EmojiMemoryGame
    var body: some View {
        return HStack(content: {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture(perform: { self.viewModel.choose(card: card) } ) //perform takes a function as an argument which needs no argument returns nothing
            }
        })
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack() { //ZStack overlays everything
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
