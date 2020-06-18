//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Chen Wang on 2020/6/2.
//  Copyright © 2020 Chen Wang. All rights reserved.
//

import Foundation

//ViewModel: portal between views and model

class EmojiMemoryGame {
//    private(set) var model: MemoryGame<String> =
//        MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: { (pairIndex: Int) -> String in
//        return "😀"
//    })
    private(set) var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        var emojis: Array<String> = ["👻","🎃","🐰"]
        emojis.shuffle()
        return MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK: - Access to Model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
