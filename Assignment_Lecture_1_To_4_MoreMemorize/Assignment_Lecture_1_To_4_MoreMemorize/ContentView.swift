//
//  ContentView.swift
//  Assignment_Lecture_1_To_4_MoreMemorize
//
//  Created by Lee McCormick on 8/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.animal))
                } label: {
                    HStack {
                        Text(Theme.animal.emojis[0])
                        Text(Theme.animal.emojis[1])
                        Text(Theme.animal.emojis[2])
                        Text(Theme.animal.emojis[3])
                        Text(Theme.animal.emojis[4])
                        Text(Theme.animal.emojis[5])
                        Text(Theme.animal.emojis[6])
                        Text(Theme.animal.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.food))
                } label: {
                    HStack {
                        Text(Theme.food.emojis[0])
                        Text(Theme.food.emojis[1])
                        Text(Theme.food.emojis[2])
                        Text(Theme.food.emojis[3])
                        Text(Theme.food.emojis[4])
                        Text(Theme.food.emojis[5])
                        Text(Theme.food.emojis[6])
                        Text(Theme.food.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.activity))
                } label: {
                    HStack {
                        Text(Theme.activity.emojis[0])
                        Text(Theme.activity.emojis[1])
                        Text(Theme.activity.emojis[2])
                        Text(Theme.activity.emojis[3])
                        Text(Theme.activity.emojis[4])
                        Text(Theme.activity.emojis[5])
                        Text(Theme.activity.emojis[6])
                        Text(Theme.activity.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.nature))
                } label: {
                    HStack {
                        Text(Theme.nature.emojis[0])
                        Text(Theme.nature.emojis[1])
                        Text(Theme.nature.emojis[2])
                        Text(Theme.nature.emojis[3])
                        Text(Theme.nature.emojis[4])
                        Text(Theme.nature.emojis[5])
                        Text(Theme.nature.emojis[6])
                        Text(Theme.nature.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.people))
                } label: {
                    HStack {
                        Text(Theme.people.emojis[0])
                        Text(Theme.people.emojis[1])
                        Text(Theme.people.emojis[2])
                        Text(Theme.people.emojis[3])
                        Text(Theme.people.emojis[4])
                        Text(Theme.people.emojis[5])
                        Text(Theme.people.emojis[6])
                        Text(Theme.people.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.vehicle))
                } label: {
                    HStack {
                        Text(Theme.vehicle.emojis[0])
                        Text(Theme.vehicle.emojis[1])
                        Text(Theme.vehicle.emojis[2])
                        Text(Theme.vehicle.emojis[3])
                        Text(Theme.vehicle.emojis[4])
                        Text(Theme.vehicle.emojis[5])
                        Text(Theme.vehicle.emojis[6])
                        Text(Theme.vehicle.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.flags))
                } label: {
                    HStack {
                        Text(Theme.flags.emojis[0])
                        Text(Theme.flags.emojis[1])
                        Text(Theme.flags.emojis[2])
                        Text(Theme.flags.emojis[3])
                        Text(Theme.flags.emojis[4])
                        Text(Theme.flags.emojis[5])
                        Text(Theme.flags.emojis[6])
                        Text(Theme.flags.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.objects))
                } label: {
                    HStack {
                        Text(Theme.objects.emojis[0])
                        Text(Theme.objects.emojis[1])
                        Text(Theme.objects.emojis[2])
                        Text(Theme.objects.emojis[3])
                        Text(Theme.objects.emojis[4])
                        Text(Theme.objects.emojis[5])
                        Text(Theme.objects.emojis[6])
                        Text(Theme.objects.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.smiley))
                } label: {
                    HStack {
                        Text(Theme.smiley.emojis[0])
                        Text(Theme.smiley.emojis[1])
                        Text(Theme.people.emojis[2])
                        Text(Theme.smiley.emojis[3])
                        Text(Theme.smiley.emojis[4])
                        Text(Theme.smiley.emojis[5])
                        Text(Theme.smiley.emojis[6])
                        Text(Theme.smiley.emojis[7])
                    }
                }
                
                NavigationLink {
                    MemoryGameView(viewModel: EmojiMemoryGame(theme: Theme.symbol))
                } label: {
                    HStack {
                        Text(Theme.symbol.emojis[0])
                        Text(Theme.symbol.emojis[1])
                        Text(Theme.symbol.emojis[2])
                        Text(Theme.symbol.emojis[3])
                        Text(Theme.symbol.emojis[4])
                        Text(Theme.symbol.emojis[5])
                        Text(Theme.symbol.emojis[6])
                        Text(Theme.symbol.emojis[7])
                    }
                }
            }
            .navigationTitle("Memory Game")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
