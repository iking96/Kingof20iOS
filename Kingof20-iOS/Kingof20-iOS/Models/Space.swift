//
//  Space.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 12/5/22.
//

import Foundation

public struct Space: Identifiable, Equatable, Codable, DropReceiver {    
    public var id = UUID();
    
    let row: Int
    let column: Int
    var tile: Tile?
    
    var isStartingSpace: Bool {
        return (
            (row == 2 && column == 2) ||
            (row == 3 && column == 2) ||
            (row == 2 && column == 3) ||
            (row == 3 && column == 3)
        )
    }
    
    public var dropArea: CGRect? = nil
}
