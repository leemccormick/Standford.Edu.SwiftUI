//
//  UtilityViews.swift
//  EmojiArt
//
//  Created by Lee McCormick on 9/14/22.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        if uiImage != nil {
            Image(uiImage: uiImage!)
        }
    }
}
