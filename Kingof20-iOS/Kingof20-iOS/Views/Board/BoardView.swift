//
//  Board.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/30/22.
//

import SwiftUI

struct BoardView: View {
    var board: Board
    
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            ForEach(0..<board.boardMatrix.endIndex, id: \.self) { rowIndex in
                let boardMatrixRow = board.boardMatrix[rowIndex]
                
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
        BoardView(
            board: Board(boardMatrix: PreviewHelpers.EmptyBoard())
        )
    }
}
