//
//  StoreProvider.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/26/23.
//

import Foundation
import SwiftUI

public struct StoreProvider<R: Reducer, V: View>: View {
    public let store: Store<R>
    public let content: () -> V

    public init(store: Store<R>, content: @escaping () -> V) {
        self.store = store
        self.content = content
    }

    public var body: some View {
        content().environmentObject(store)
    }
}
