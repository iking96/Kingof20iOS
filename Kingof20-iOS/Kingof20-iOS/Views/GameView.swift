//
//  ContentView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/29/22.
//

import SwiftUI

struct GameView: View {
    var rackedTiles: [Tile]

    var body: some View {
        Color.purple
            .ignoresSafeArea(.all)
            .overlay(
                VStack {
                    Spacer()
                    BoardView()
                    RackView(tiles: rackedTiles)
                    Spacer()
                }
                .background(Color.purple)
                .frame(width: .none, height: .none)
                .padding(4)
        )
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        StoreProvider(store: .default) {
            GameView(
                rackedTiles: PreviewHelpers.FullRack()
            )
        }
    }
}
