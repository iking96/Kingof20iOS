//
//  Board.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/30/22.
//

import SwiftUI

struct BoardView: View {
    @EnvironmentObject var store: GameStore
        
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            ForEach(0..<store.state.board.boardMatrix.endIndex, id: \.self) { rowIndex in
                let boardMatrixRow = store.state.board.boardMatrix[rowIndex]
                
                GridRow {
                    ForEach(boardMatrixRow) { space in
                        SpaceView(space: space)
                    }
                }
            }
        }.aspectRatio(1, contentMode: .fit)
    }
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        StoreProvider(store: .default) {
            BoardView()
        }
    }
}
