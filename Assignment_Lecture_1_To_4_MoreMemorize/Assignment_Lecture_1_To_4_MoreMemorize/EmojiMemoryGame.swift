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
            return ["🚂", "🚁", "🚀","🚜", "🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐","🛻","🚚","🚛","🛴","🛵","✈️","🚞","🚢","⛴","⛵️"]
        case .people:
            return  ["🧑‍🦱", "👩🏼‍🦳","🧑🏾‍🦳", "👮🏽‍♀️","🧔🏻‍♂️", "👲","👳‍♀️", "🧕🏼","👷‍♀️", "💂🏻‍♀️","🕵🏼‍♀️", "🕵️‍♂️","👩🏻‍⚕️", "👩🏼‍🌾","👩🏼‍🍳", "👩🏻‍🎓","👩🏽‍🎤", "🧑🏾‍🎤","👩‍🏫", "👨🏻‍🏫","👩‍🏭", "👩🏻‍💻","👨‍💻", "👩‍💼","🧑🏽‍🔧", "🧑‍🔬","👩🏻‍🎨", "👩🏽‍🚒","🧑🏼‍🚀", "👨🏻‍✈️","👰🏻‍♂️", "👸","🤴🏻", "🧝🏼‍♀️"]
        case .food:
            return  ["🍏", "🍎","🍐", "🍊","🍋", "🍌","🍉", "🍇","🍓", "🫐","🍈", "🍒","🍑", "🥭","🍍", "🥥","🥐", "🥨","🧀", "🥚","🧈", "🍔","🌭", "🌮","🥗", "🥘","🍝", "🍜","🍣", "🍱","🥟", "🍤","🍰", "🎂"]
        case .animal:
            return  ["🐶", "🐱","🐭", "🐹","🐰", "🦊","🐻", "🐼","🐻‍❄️", "🐨","🐯", "🦁","🐮", "🐷","🐽", "🐸","🐵", "🙈","🐒", "🐔","🐧", "🐦","🐤", "🐣","🐥", "🦆","🦅", "🦉","🦇", "🐺","🐗", "🐴","🦄", "🐝"]
        case .nature:
            return  ["🐉", "🐲","🌵", "🎄","🌲", "🌳","🌴", "🪵","🌱", "🌿","☘️", "🍀","🎍", "🪴","🎋", "🍃","🍂", "🍁","🍄", "🐚","🪨", "🌾","💐", "🌷","🌺", "🌼","🌜", "🌞","🌎", "⛅️","⛈", "❄️","🌟", "⛄️"]
        case .activity:
            return  ["⚽️", "🏀","🏈", "⚾️","🥎", "🏐","🏉", "🥏","🎱", "🏓","🪀", "🏸","🏒", "🏑","🥍", "🏏","🪃", "⛳️","🪁", "🏹","🎣", "🤿","🥊", "🥋","🎽", "🛼","🛹", "🛷","🥌", "🎿","🏂", "🚵🏻‍♂️","🏄🏼", "🪂"]
        case .flags:
            return ["🏴","🚩","🏳️‍🌈","🏳️‍⚧️","🇺🇳","🇦🇫","🇦🇶","🇦🇽","🇦🇩","🇧🇸","🇧🇭","🇧🇩","🇧🇧","🇧🇾","🇧🇪","🇧🇬","🇰🇭","🇮🇨","🇨🇦","🇰🇷","🇺🇸","🇬🇧","🇹🇭","🇺🇾"]
        case .objects:
            return ["⌚️","📱","💻","🖥","🖨","🖱","🖲","📸","📹","💽","☎️","📟","📺","🧭","⏰","⌛️","📡","💸","🔋","💎","💵","🪜","⚖️","🩸"]
        case .smiley:
            return ["😀","😅","🤣","🥲","☺️","😇","🙃","😉","😌","😍","🥰","😘","🤓","🤩","🥳","😏","😫","😡","🤬","🥵","🥶","😶‍🌫️","😱","🤮"]
        case .symbol:
            return ["❤️","❤️‍🩹","💕","☯️","☢️","❌","🅰️","⭕️","⚠️","🚸","🚫","💯","⛔️","❇️","🌀","🚼","➖","🎵","➗","✖️","🔈","🕐","♣️","🔔"]
        }
    }
    
    var numberPairsOfCards: Int {
        switch self {
        case .vehicle:
            return 10
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
