//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Lee McCormick on 9/13/22.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
