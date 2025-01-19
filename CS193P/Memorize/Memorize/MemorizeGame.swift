//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Zikang Xu on 2025-01-18.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var Content: CardContent
    }
}
