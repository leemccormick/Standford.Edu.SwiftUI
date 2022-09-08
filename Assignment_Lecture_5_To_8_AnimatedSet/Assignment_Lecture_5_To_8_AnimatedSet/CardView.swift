//
//  CardView.swift
//  Assignment_Lecture_5_To_8_AnimatedSet
//
//  Created by Lee McCormick on 9/7/22.
//

import SwiftUI

struct CardView: View {
    let card: SunSetGame.Card
    var isUndealt: Bool
    
    var body: some View {
        ZStack {
            let cardShape = RoundedRectangle(cornerRadius: DrawingConstants.cardCornerRadius)
            cardShape.fill().foregroundColor(.white)
            cardShape.strokeBorder(lineWidth: DrawingConstants.defaultLineWidth)
            symbol
            
            cardShape.strokeBorder(lineWidth: DrawingConstants.effectLineWidth)
                .foregroundColor(.orange).opacity(card.isChosen ? 1 : 0)
            
            cardShape.foregroundColor(.yellow).opacity(card.isHint ? DrawingConstants.effectOpacity : 0)
            cardShape.strokeBorder(lineWidth: DrawingConstants.effectLineWidth).foregroundColor(.yellow).opacity(card.isHint ? 1 : 0)
            
            cardShape.foregroundColor(.green).opacity(card.isMatched ? DrawingConstants.effectOpacity : 0).animation(.easeInOut)
            cardShape.strokeBorder(lineWidth: DrawingConstants.effectLineWidth).foregroundColor(.green).opacity(card.isMatched ? 1 : 0)
            cardShape.strokeBorder(lineWidth: DrawingConstants.effectLineWidth).foregroundColor(.gray).opacity(card.isMatched ? 1 : 0)
            cardShape.opacity(isUndealt ? 1 : 0)
        }
        .rotationEffect(Angle.degrees(card.isNotMatched ? 3 : 0))
        .rotationEffect(Angle.degrees(card.isMatched ? 360 : 0))
    }
    
    var symbol: some View {
        VStack {
            ForEach(0..<card.symbol.numberOfShapes, id: \.self) { _ in
                createSymbol(for: card)
            }
        }
        .padding()
    }
    
    @ViewBuilder
    func createSymbol(for card: SunSetGame.Card) -> some View {
        switch card.symbol.shape {
        case .roundedRectangle:
            createSymbolView(of: card.symbol, shape: RoundedRectangle(cornerRadius: DrawingConstants.symbolCornerRadius))
        case .squiggle:
            createSymbolView(of: card.symbol, shape: Squiggle())
        case .diamond:
            createSymbolView(of: card.symbol, shape: Diamond())
        }
    }
    
    @ViewBuilder
    private func createSymbolView<SymbolShape>(of symbol: SunSetGame.Card.CardContent, shape: SymbolShape) -> some View where SymbolShape: Shape {
        switch symbol.pattern {
        case .filled:
            shape.fill().foregroundColor(symbol.color.getColor())
                .aspectRatio(DrawingConstants.symbolAspectRatio, contentMode: .fit)
                .opacity(DrawingConstants.symbolOpacity)
        case .shaded:
            StripeView(shape: shape, color: symbol.color.getColor())
                .aspectRatio(DrawingConstants.symbolAspectRatio, contentMode: .fit)
                .opacity(DrawingConstants.symbolOpacity)
        case .stroked:
            shape.stroke(lineWidth: DrawingConstants.defaultLineWidth).foregroundColor(symbol.color.getColor())
                .aspectRatio(DrawingConstants.symbolAspectRatio, contentMode: .fit)
                .opacity(DrawingConstants.symbolOpacity)
        }
    }
    
    struct DrawingConstants {
        static let symbolAspectRatio: CGFloat = 2/1
        static let symbolOpacity: Double = 0.7
        static let symbolCornerRadius: CGFloat = 50
        static let defaultLineWidth: CGFloat = 2
        static let effectLineWidth: CGFloat = 3
        static let cardCornerRadius: CGFloat = 10
        static let effectOpacity: Double = 0.1
    }
}
