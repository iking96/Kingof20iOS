//
//  TileView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/30/22.
//

import SwiftUI

struct TileView: View {
    @EnvironmentObject var store: GameStore

    var tile: Tile
                     
    var body: some View {
        tile.view().draggable(onDropped: onDropPiece)
    }
    
    func onDropPiece(position: CGPoint) -> Void {
        store.send(RackAction.Place(at: position, tile: tile))
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(tile: Tile(value: TileValue.over))
    }
}

private extension Tile {
    var backgroundColor: Color { Color.white }
    
    var textColor: Color { Color.black }
    
    var textView: Text {
        Text(face)
            .font(.headline)
            .foregroundColor(textColor)
    }
    
    func view() -> some View {
        backgroundColor
        .overlay(
            textView
                .minimumScaleFactor(0.01)
                .rotationEffect(Angle(degrees: textRotation))
        )
        .shadow(color: .white, radius: 1, x: 0, y: 0)
        .aspectRatio(1, contentMode: .fit)
    }
}
