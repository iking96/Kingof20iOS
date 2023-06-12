//
//  SpaceView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 12/5/22.
//

import SwiftUI

struct SpaceView: View {
    @EnvironmentObject var store: GameStore

    var space: Space
    
    var body: some View {
        space
            .backgroundColor
            .dropReceiver(for: store.state.board.boardMatrix[space.row][space.column], model: store)
            .overlay(
                space
                    .textView
                    .minimumScaleFactor(0.01)
                    .rotationEffect(Angle(degrees: space.textRotation))
            ).shadow(color: .white, radius: 1, x: 0, y: 0)
    }
}

struct SpaceView_Previews: PreviewProvider {
    static func space(tileValue: TileValue?) -> Space {
        return Space(row: 0, column: 0, tile: (tileValue != nil) ? .init(value: tileValue!) : nil)
    }
    
    static var previews: some View {
        VStack {
            SpaceView(space: Space(row: 0, column: 0, tile: .init(value: TileValue.one)))
            SpaceView(space: Space(row: 0, column: 0, tile: .init(value: TileValue.over)))
            SpaceView(space: Space(row: 0, column: 0, tile: nil))
            SpaceView(space: Space(row: 2, column: 2, tile: nil))
        }
    }
}

private extension Space {
    var backgroundColor: Color {
        if (tile != nil) {
            return Color.white
        }
        
        return isStartingSpace ? Color.gray : Color.black
    }
    
    var textColor: Color { Color.black }
    
    var textRotation: Double { tile?.textRotation ?? 0.0 }

    var textView: Text {
        if let face = tile?.face {
            return Text(face)
                .font(.headline)
                .foregroundColor(textColor)
        } else {
            return Text("")
        }
    }
}
