//
//  MemoryGameView.swift
//  Assignment_Lecture_1_To_4_MoreMemorize
//
//  Created by Lee McCormick on 8/24/22.
//

import SwiftUI

struct MemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        if viewModel.isShowingGameOver {
            VStack {
                Text(viewModel.gameOverText)
                    .font(.title.bold())
                    .foregroundColor(viewModel.theme.color)
                    .multilineTextAlignment(.center)
                    .padding(20)
                Button {
                    viewModel.restartGame()
                } label: {
                    VStack {
                        Text("Restart \(viewModel.theme.name) Memorizing Game")
                            .foregroundColor(viewModel.theme.color)
                        HStack {
                            Text(viewModel.theme.emojis[0])
                            Text(viewModel.theme.emojis[1])
                            Text(viewModel.theme.emojis[2])
                            Text(viewModel.theme.emojis[3])
                            Text(viewModel.theme.emojis[4])
                            Text(viewModel.theme.emojis[5])
                            Text(viewModel.theme.emojis[6])
                            Text(viewModel.theme.emojis[7])
                        }
                    }
                    .padding(10)
                    .background(viewModel.theme.color.opacity(0.3))
                    .cornerRadius(6)
                }
            }.padding(20)
        } else {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card).aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
            .foregroundColor(viewModel.theme.color)
            .padding(.horizontal)
            .navigationTitle("\(viewModel.theme.emojisTitle)  Score : \(viewModel.score)")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                viewModel.restartGame()
            }
        }
    }
}

struct MemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.activity))
    }
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack {
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                shape.fill()
            }
        }
    }
}
