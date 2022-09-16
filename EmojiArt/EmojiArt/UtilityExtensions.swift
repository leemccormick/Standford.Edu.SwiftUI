//
//  UtilityExtensions.swift
//  EmojiArt
//
//  Created by Lee McCormick on 9/13/22.
//

import Foundation
import UIKit

extension Collection where Element: Identifiable {
    func index(matching element: Element) -> Self.Index? {
        firstIndex(where: {$0.id == element.id})
    }
}

extension RangeReplaceableCollection where Element: Identifiable {
    
}


extension CGRect {
    var center: CGPoint {
        CGPoint(x: midX, y: midY)
    }
}

//extension Array where Element == NSItemProvider {
//    func loadObjects<T>(ofType theType: T.Type, firstOnly: Bool = false, using load: @escaping (T) -> Void) -> Bool where T: NSItemProviderReading {
//        if let provider = first(where: { $0.canLoadObject(ofClass: theType)}) {
//            provider.
//        }
//    }
//    
//    
//}

extension Array where Element == NSItemProvider {
    func loadObjects<T>(
        ofType theType: T.Type,
        firstOnly: Bool = false,
        using load: @escaping (T) -> Void
    ) -> Bool where T: NSItemProviderReading {
        if let provider = self.first(where: { $0.canLoadObject(ofClass: theType) }) {
            provider.loadObject(ofClass: theType) { object, _ in
                if let value = object as? T {
                    DispatchQueue.main.async {
                        load(value)
                    }
                }
            }
            return true
        }
        return false
    }
    func loadObjects<T>(
        ofType theType: T.Type,
        firstOnly: Bool = false,
        using load: @escaping (T) -> Void
    ) -> Bool where T: _ObjectiveCBridgeable, T._ObjectiveCType: NSItemProviderReading {
        if let provider = self.first(where: { $0.canLoadObject(ofClass: theType) }) {
            _ = provider.loadObject(ofClass: theType) { object, _ in
                if let value = object {
                    DispatchQueue.main.async {
                        load(value)
                    }
                }
            }
            return true
        }
        return false
    }
    func loadFirstObject<T>(
        ofType theType: T.Type,
        using load: @escaping (T) -> Void
    ) -> Bool where T: NSItemProviderReading {
        self.loadObjects(ofType: theType, firstOnly: true, using: load)
    }
    func loadFirstObject<T>(
        ofType theType: T.Type,
        using load: @escaping (T) -> Void
    ) -> Bool where T: _ObjectiveCBridgeable, T._ObjectiveCType: NSItemProviderReading {
        self.loadObjects(ofType: theType, firstOnly: true, using: load)
    }
}


//extension CGPoint {
//    static func -(lhs: Self, rhs: Self) -> CGSize {
//        CGSize(width: lhs.x - rhs.x, height: lhs.y - rhs.y)
//    }
//    
//    static func +(lhs: Self, rhs: Self) -> CGPoint {
//        CGPoint(x: lhs.x + rhs.width, y: lhs.y + rhs.height)
//    }
//    
//    static func -(lhs: Self, rhs: Self) -> CGPoint {
//        CGPoint(x: lhs.x - rhs.width, y: lhs.y - rhs.height)
//    }
//    
//    static func *(lhs: Self, rhs: CGPoint) -> CGPoint {
//        CGPoint(x: lhs.x * rhs, y: lhs.y * rhs)
//    }
//    
//    static func /(lhs: Self, rhs: CGPoint) -> CGPoint {
//        CGPoint(x: lhs.x / rhs, y: lhs.y / rhs)
//    }
//}


extension Character {
    var isEmoji: Bool {
        if let firstScalar = unicodeScalars.first, firstScalar.properties.isEmoji {
            return (firstScalar.value >= 0x238d || unicodeScalars.count > 1)
        } else {
            return false
        }
    }
}


extension URL {
    var imageURL: URL {
        for query in query?.components(separatedBy: "&") ?? [] {
            let queryComponents = query.components(separatedBy: "=")
            if queryComponents.count == 2 {
                if queryComponents[0] == "imgurl", let url = URL(string: queryComponents[1].removingPercentEncoding ?? "") {
                    return url
                }
            }
        }
        return baseURL ?? self
    }
}

extension CGSize {
    var center: CGPoint {
        CGPoint(x: width / 2, y: height / 2)
    }
    
    static func +(lhs: Self, rhs: Self) -> CGSize {
        CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    
    static func -(lhs: Self, rhs: Self) -> CGSize {
        CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    
    static func *(lhs: Self, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
    }
    
    static func /(lhs: Self, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
    }
}
