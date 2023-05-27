//
//  TileView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/30/22.
//

import SwiftUI

struct TileView: View {
    var tile: Tile
    var onSelection: () -> Void

    var body: some View {
        Button(action: onSelection) {
            tile.view()
        }
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(tile: Tile(value: TileValue.over), onSelection: { })
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
