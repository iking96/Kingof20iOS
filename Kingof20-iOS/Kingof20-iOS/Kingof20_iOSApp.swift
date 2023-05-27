//
//  Kingof20_iOSApp.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/29/22.
//

import SwiftUI

@main
struct Kingof20_iOSApp: App {
    let store = GameStore.default
    
    var body: some Scene {
        WindowGroup {
            GameView(
                rackedTiles: PreviewHelpers.FullRack()
            ).environmentObject(store)
        }
    }
}
