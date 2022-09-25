//
//  Assignment_Lecture_6_To_12_EmojiArtApp.swift
//  Assignment_Lecture_6_To_12_EmojiArt
//
//  Created by Lee McCormick on 9/20/22.
//

import SwiftUI

@main
struct Assignment_Lecture_6_To_12_EmojiArtApp: App {
    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
                .environmentObject(paletteStore)
        }
    }
}
