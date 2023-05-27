//
//  GameState.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/26/23.
//

import Foundation

public struct GameState: Codable {
    var board: Board = Board(boardMatrix: PreviewHelpers.EmptyBoard())
}

