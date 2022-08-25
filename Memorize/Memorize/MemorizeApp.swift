//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Lee McCormick on 8/22/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
