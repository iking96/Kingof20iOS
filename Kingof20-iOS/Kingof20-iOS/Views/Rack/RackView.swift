//
//  RackView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/23/23.
//

import SwiftUI

struct RackView: View {
    var tiles: [Tile]

    var body: some View {
        HStack {
            ForEach(tiles) { tile in
                TileView(tile: tile)
            }
        }
    }
}

struct RackView_Previews: PreviewProvider {
    static var previews: some View {
        RackView(
            tiles: PreviewHelpers.FullRack()
        )
    }
}
