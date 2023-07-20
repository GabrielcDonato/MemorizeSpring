//
//  memorizeBasicApp.swift
//  memorizeBasic
//
//  Created by Premiersoft on 10/07/23.
//

import SwiftUI

@main
struct memorizeBasicApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
