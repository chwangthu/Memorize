//
//  MemoryGame.swift
//  Memorize
//
//  Created by Chen Wang on 2020/6/2.
//  Copyright © 2020 Chen Wang. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
