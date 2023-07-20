//
//  EmojiMemomyGame.swift
//  memorizeBasic
//
//  Created by Premiersoft on 10/07/23.
//
//viewmodel
import SwiftUI

//func makeCardContent(index: Int) -> String {
//    return "😎"
//}

class EmojiMemoryGame: ObservableObject {
   static let emojis = ["🚲","😀","😂","😍","🥵","😘", "😎","🥸","🤩","😛","😲","😭","😡","🥺","🤡","🤠","👽","🫣","😶", "🤬","🤕","🙉","🐥","😇"]

   static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in EmojiMemoryGame.emojis[pairIndex]}
    }
    
   @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    // MARK: - Intent (s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
