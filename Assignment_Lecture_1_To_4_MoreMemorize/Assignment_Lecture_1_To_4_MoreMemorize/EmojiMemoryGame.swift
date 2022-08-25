//
//  EmojiMemoryGame.swift
//  Assignment_Lecture_1_To_4_MoreMemorize
//
//  Created by Lee McCormick on 8/23/22.
//

import SwiftUI

enum Theme {
    case vehicle, people, food, animal, nature, activity
    
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
            return  ["🐉", "🐲","🌵", "🎄","🌲", "🌳","🌴", "🪵","🌱", "🌿","☘️", "🍀","🎍", "🪴","🎋", "🍃","🍂", "🍁","🍄", "🐚","🪨", "🌾","💐", "🌷","🌺", "🌼","🌜", "🌞","🌎", "⛅️","⛈", "","", ""]
        case .activity:
            return  ["⚽️", "🏀","🏈", "⚾️","🥎", "🏐","🏉", "🥏","🎱", "🏓","🪀", "🏸","🏒", "🏑","🥍", "🏏","🪃", "⛳️","🪁", "🏹","🎣", "🤿","🥊", "🥋","🎽", "🛼","🛹", "🛷","🥌", "🎿","🏂", "🚵🏻‍♂️","🏄🏼", "🪂"]
        }
    }
    
    var numberPairsOfCards: Int {
        switch self {
        case .vehicle:
            return 10
        case .people:
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
        }
    }
}

class EmojiMemoryGame: ObservableObject {
    static func createMemoryGame(from theme: Theme) -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: theme.numberPairsOfCards) { pairIndex in
            theme.emojis[pairIndex] }
    }
    
    @Published private var model: MemoryGame<String>
    @Published var theme: Theme
    
    init(theme: Theme) {
        self.theme = theme
        model = EmojiMemoryGame.createMemoryGame(from: theme)
    }
        
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
