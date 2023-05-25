//
//  ContentView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/29/22.
//

import SwiftUI

struct GameView: View {
    var board: Board
    var rackedTiles: [Tile]

    var body: some View {
        Color.purple
            .ignoresSafeArea(.all)
            .overlay(
                VStack {
                    Spacer()
                    BoardView(board: board)
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
        GameView(
            board: Board(boardMatrix: PreviewHelpers.EmptyBoard()),
            rackedTiles: PreviewHelpers.FullRack()
        )
    }
}
