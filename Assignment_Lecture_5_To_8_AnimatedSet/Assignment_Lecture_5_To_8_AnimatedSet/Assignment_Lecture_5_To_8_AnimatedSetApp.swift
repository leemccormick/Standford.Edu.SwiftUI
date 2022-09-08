//
//  Assignment_Lecture_5_To_8_AnimatedSetApp.swift
//  Assignment_Lecture_5_To_8_AnimatedSet
//
//  Created by Lee McCormick on 9/6/22.
//

import SwiftUI

@main
struct Assignment_Lecture_5_To_8_AnimatedSetApp: App {
    let game = SunSetGame()
    var body: some Scene {
        WindowGroup {
            SunSetGameView(game: game)
        }
    }
}
