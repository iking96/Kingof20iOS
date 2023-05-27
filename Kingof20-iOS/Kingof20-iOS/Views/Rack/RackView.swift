//
//  RackView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/23/23.
//

import SwiftUI

struct RackView: View {
    @EnvironmentObject var store: GameStore

    var tiles: [Tile]

    var body: some View {
        HStack {
            ForEach(tiles) { tile in
                TileView(tile: tile) {
                    store.send(RackAction.Place(at: Space(row: 1, column: 1, tile: tile)))
                }
            }
        }
    }
}

struct RackView_Previews: PreviewProvider {
    static var previews: some View {
        StoreProvider(store: .default) {
            RackView(
                tiles: PreviewHelpers.FullRack()
            )
        }
    }
}
