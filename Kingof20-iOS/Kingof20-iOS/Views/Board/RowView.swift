//
//  RowView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 12/5/22.
//

import SwiftUI

struct RowView: View {
    var spaces: [Space]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(spaces) { space in
                SpaceView(space: space)
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(
            spaces: [
                Space(row: 0, column: 0, tile: .init(value: TileValue.one))
            ]
        )
    }
}
