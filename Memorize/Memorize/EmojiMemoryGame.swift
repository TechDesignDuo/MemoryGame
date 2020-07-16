//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nik Izmerli on 2020-07-12.
//  Copyright © 2020 Tech Design Duo. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    // Mark: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
        
    }
}
