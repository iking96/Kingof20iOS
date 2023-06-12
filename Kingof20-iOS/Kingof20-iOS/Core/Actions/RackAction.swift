//
//  RackAction.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/26/23.
//

import Foundation

public enum RackAction {
    public struct Place: GameAction {
        let position: CGPoint
        let tile: Tile
        
        public init(at position: CGPoint, tile: Tile) {
            self.position = position
            self.tile = tile
        }
    }
}
