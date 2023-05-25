//
//  PreviewHelpers.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 12/12/22.
//

import Foundation

class PreviewHelpers {
    class func EmptyBoard() -> [[Space]] {
        var array = [[Space]]()
        
        for column in 0...GAME_CONSTANTS.BoardSize {
            var columnArray = Array<Space>()
            for row in 0...GAME_CONSTANTS.BoardSize {
                columnArray.append(Space(row: row, column: column))
            }
            array.append(columnArray)
        }
        
        return array
    }
    
    class func FullRack() -> [Tile] {
        return [
            Tile(value: TileValue.one),
            Tile(value: TileValue.two),
            Tile(value: TileValue.three),
            Tile(value: TileValue.four),
            Tile(value: TileValue.five),
            Tile(value: TileValue.six),
            Tile(value: TileValue.seven),
        ]
    }
}
