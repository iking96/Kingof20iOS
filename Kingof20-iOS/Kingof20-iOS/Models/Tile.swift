//
//  TileModel.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/30/22.
//

import SwiftUI

enum TileValue: Int, Codable {
    case one = 1
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case plus
    case times
    case minus
    case over
}

struct Tile : Identifiable, Equatable, Codable {
    var id = UUID()
    var value : TileValue
    
    var face: String {
        switch value {
            case TileValue.one: return "1"
            case TileValue.two: return "2"
            case TileValue.three: return "3"
            case TileValue.four: return "4"
            case TileValue.five: return "5"
            case TileValue.six: return "6"
            case TileValue.seven: return "7"
            case TileValue.eight: return "8"
            case TileValue.nine: return "9"
            case TileValue.plus: return "Plus"
            case TileValue.times: return "Time"
            case TileValue.minus: return "Minus"
            case TileValue.over: return "Over"
        }
    }
    
    var isOperation: Bool {
        [
            TileValue.plus,
            TileValue.times,
            TileValue.minus,
            TileValue.over,
        ].contains(value)
    }
    
    var isNumber: Bool {
        !isOperation
    }
    
    // Text View methods
    var textRotation: Double { isOperation ? -45.0 : 0.0 }
}
