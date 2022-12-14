//
//  EmojiMemoryGame.swift
//  Assignment_Lecture_1_To_4_MoreMemorize
//
//  Created by Lee McCormick on 8/23/22.
//

import SwiftUI

// MARK: - Theme
enum Theme {
    case vehicle, people, food, animal, nature, activity, flags, objects, smiley, symbol
    
    var emojis: [String] {
        switch self {
        case .vehicle:
            return ["ð", "ð", "ð","ð", "ð","ð","ð","ð","ð","ð","ð","ð","ð","ð","ðŧ","ð","ð","ðī","ðĩ","âïļ","ð","ðĒ","âī","âĩïļ"]
        case .people:
            return  ["ð§âðĶą", "ðĐðžâðĶģ","ð§ðūâðĶģ", "ðŪð―ââïļ","ð§ðŧââïļ", "ðē","ðģââïļ", "ð§ðž","ð·ââïļ", "ððŧââïļ","ðĩðžââïļ", "ðĩïļââïļ","ðĐðŧââïļ", "ðĐðžâðū","ðĐðžâðģ", "ðĐðŧâð","ðĐð―âðĪ", "ð§ðūâðĪ","ðĐâðŦ", "ðĻðŧâðŦ","ðĐâð­", "ðĐðŧâðŧ","ðĻâðŧ", "ðĐâðž","ð§ð―âð§", "ð§âðŽ","ðĐðŧâðĻ", "ðĐð―âð","ð§ðžâð", "ðĻðŧââïļ","ð°ðŧââïļ", "ðļ","ðĪīðŧ", "ð§ðžââïļ"]
        case .food:
            return  ["ð", "ð","ð", "ð","ð", "ð","ð", "ð","ð", "ðŦ","ð", "ð","ð", "ðĨ­","ð", "ðĨĨ","ðĨ", "ðĨĻ","ð§", "ðĨ","ð§", "ð","ð­", "ðŪ","ðĨ", "ðĨ","ð", "ð","ðĢ", "ðą","ðĨ", "ðĪ","ð°", "ð"]
        case .animal:
            return  ["ðķ", "ðą","ð­", "ðđ","ð°", "ðĶ","ðŧ", "ðž","ðŧââïļ", "ðĻ","ðŊ", "ðĶ","ðŪ", "ð·","ð―", "ðļ","ðĩ", "ð","ð", "ð","ð§", "ðĶ","ðĪ", "ðĢ","ðĨ", "ðĶ","ðĶ", "ðĶ","ðĶ", "ðš","ð", "ðī","ðĶ", "ð"]
        case .nature:
            return  ["ð", "ðē","ðĩ", "ð","ðē", "ðģ","ðī", "ðŠĩ","ðą", "ðŋ","âïļ", "ð","ð", "ðŠī","ð", "ð","ð", "ð","ð", "ð","ðŠĻ", "ðū","ð", "ð·","ðš", "ðž","ð", "ð","ð", "âïļ","â", "âïļ","ð", "âïļ"]
        case .activity:
            return  ["â―ïļ", "ð","ð", "âūïļ","ðĨ", "ð","ð", "ðĨ","ðą", "ð","ðŠ", "ðļ","ð", "ð","ðĨ", "ð","ðŠ", "âģïļ","ðŠ", "ðđ","ðĢ", "ðĪŋ","ðĨ", "ðĨ","ð―", "ðž","ðđ", "ð·","ðĨ", "ðŋ","ð", "ðĩðŧââïļ","ððž", "ðŠ"]
        case .flags:
            return ["ðī","ðĐ","ðģïļâð","ðģïļââ§ïļ","ðšðģ","ðĶðŦ","ðĶðķ","ðĶð―","ðĶðĐ","ð§ðļ","ð§ð­","ð§ðĐ","ð§ð§","ð§ðū","ð§ðŠ","ð§ðŽ","ð°ð­","ðŪðĻ","ðĻðĶ","ð°ð·","ðšðļ","ðŽð§","ðđð­","ðšðū"]
        case .objects:
            return ["âïļ","ðą","ðŧ","ðĨ","ðĻ","ðą","ðē","ðļ","ðđ","ð―","âïļ","ð","ðš","ð§­","â°","âïļ","ðĄ","ðļ","ð","ð","ðĩ","ðŠ","âïļ","ðĐļ"]
        case .smiley:
            return ["ð","ð","ðĪĢ","ðĨē","âšïļ","ð","ð","ð","ð","ð","ðĨ°","ð","ðĪ","ðĪĐ","ðĨģ","ð","ðŦ","ðĄ","ðĪŽ","ðĨĩ","ðĨķ","ðķâðŦïļ","ðą","ðĪŪ"]
        case .symbol:
            return ["âĪïļ","âĪïļâðĐđ","ð","âŊïļ","âĒïļ","â","ð°ïļ","â­ïļ","â ïļ","ðļ","ðŦ","ðŊ","âïļ","âïļ","ð","ðž","â","ðĩ","â","âïļ","ð","ð","âĢïļ","ð"]
        }
    }
    
    var numberPairsOfCards: Int {
        switch self {
        case .vehicle:
            return 4
        case .people:
            return 10
        case .flags:
            return 10
        case .objects:
            return 10
        case .smiley:
            return 10
        case .symbol:
            return 10
        case .food:
            return 10
        case .animal:
            return 10
        case .nature:
            return 10
        case .activity:
            return 10
        }
    }
    
    var color: Color {
        switch self {
        case .vehicle:
            return Color.red
        case .people:
            return Color.blue
        case .food:
            return Color.orange
        case .animal:
            return Color.brown
        case .nature:
            return Color.green
        case .activity:
            return Color.purple
        case .flags:
            return Color.mint
        case .objects:
            return Color.gray
        case .smiley:
            return Color.yellow
        case .symbol:
            return Color.cyan
        }
    }
    
    var name: String {
        switch self {
        case .vehicle:
            return "Vehicel"
        case .people:
            return "People"
        case .food:
            return "Food"
        case .animal:
            return "Animal"
        case .nature:
            return "Nature"
        case .activity:
            return "Activity"
        case .flags:
            return "Flags"
        case .objects:
            return "Objects"
        case .smiley:
            return "Smiley"
        case .symbol:
            return "Symbol"
        }
    }
    
    var emojisTitle: String {
        switch self {
        case .vehicle:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .people:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .food:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .animal:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .nature:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .activity:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .flags:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .objects:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .smiley:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        case .symbol:
            return "\(self.emojis[0])\(self.emojis[1])\(self.emojis[2])"
        }
    }
}



// MARK: - Emoji Memory Game
class EmojiMemoryGame: ObservableObject {
    static func createMemoryGame(from theme: Theme) -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: theme.numberPairsOfCards) { pairIndex in
            let shuffledEmojis = theme.emojis.shuffled()
            return shuffledEmojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String>
    @Published var theme: Theme
    @Published var score: Int
    @Published var isShowingGameOver: Bool
    @Published var gameOverText: String
    
    init(theme: Theme) {
        self.theme = theme
        model = EmojiMemoryGame.createMemoryGame(from: theme)
        score = 0
        isShowingGameOver = false
        gameOverText = ""
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        score += model.choose(card)
        let matchedCards = cards.filter {$0.isMatched}
        if model.cards.count == matchedCards.count {
            isShowingGameOver = true
            if score > cards.count / 2 {
                gameOverText = "You are the champion of memorizing \(theme.name)."
            } else if score > 0 {
                gameOverText = "You have a genius brain to memorize \(theme.name)."
            } else  {
                gameOverText = "Play again! \nMemorizing \(theme.name)."
            }
        }
    }
    
    func restartGame() {
        model = EmojiMemoryGame.createMemoryGame(from: theme)
        score = 0
        isShowingGameOver = false
    }
}
