//
//  TileView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/30/22.
//

import SwiftUI

struct TileView: View {
    var tile: Tile
    
    var body: some View {
        tile
            .backgroundColor
            .overlay(
                tile
                    .textView
                    .minimumScaleFactor(0.01)
                    .rotationEffect(Angle(degrees: tile.textRotation))
            )
            .shadow(color: .white, radius: 1, x: 0, y: 0)
            .aspectRatio(1, contentMode: .fit)
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
}
