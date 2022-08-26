//
//  MemoryGame.swift
//  Assignment_Lecture_1_To_4_MoreMemorize
//
//  Created by Lee McCormick on 8/23/22.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    private var indexOfTheOneAndOnlyFaceUpCard: Int?
    
    mutating func choose(_ card: Card) -> Int {
        var pointEarn = 0
        if let chosenIndex = cards.firstIndex(where: {$0.id == card.id}) {
            if !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched {
                if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                    if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                        cards[chosenIndex].isMatched = true
                        cards[potentialMatchIndex].isMatched = true
                        pointEarn += 2
                    }
                    indexOfTheOneAndOnlyFaceUpCard = nil
                } else {
                    if cards[chosenIndex].hasBeenSeen  {
                        pointEarn -= 1
                    }
                    for index in cards.indices {
                        cards[index].isFaceUp = false
                    }
                    indexOfTheOneAndOnlyFaceUpCard = chosenIndex
                }
                cards[chosenIndex].isFaceUp.toggle()
                cards[chosenIndex].hasBeenSeen = true
            } else {
                if cards[chosenIndex].hasBeenSeen {
                    pointEarn -= 1
                } else {
                    cards[chosenIndex].hasBeenSeen = true
                }
            }
        }
        return pointEarn
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        var pairIndex = 0
        while pairIndex<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            if cards.isEmpty {
                cards.append(Card(content: content, id: pairIndex * 2))
                cards.append(Card(content: content, id: pairIndex * 2 + 1))
                pairIndex += 1
            } else {
                let cardsContainContent = cards.filter {$0.content == content}
                if cardsContainContent.count == 0 {
                    cards.append(Card(content: content, id: pairIndex * 2))
                    cards.append(Card(content: content, id: pairIndex * 2 + 1))
                    pairIndex += 1
                }
            }
        }
        cards = cards.shuffled()
    }
    
    struct Card: Identifiable {
        var hasBeenSeen: Bool = false
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
