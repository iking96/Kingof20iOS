//
//  TileModel.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/30/22.
//

import SwiftUI

struct Board : Identifiable, Equatable, Codable {
    var id = UUID()
    var boardMatrix : [[Space]]
}
