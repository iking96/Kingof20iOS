//
//  store.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/26/23.
//

import Foundation
import Combine

// TODO: Use or remove
internal func abstractMethod(file: StaticString = #file, line: UInt = #line) -> Never {
    fatalError("Abstract method call", file: file, line: line)
}

public final class Store<R: Reducer>: ObservableObject {
    @Published public private(set) var state: R.State

    private let reducer: R

    public init(initialState: R.State, reducer: R) {
        self.state = initialState
        self.reducer = reducer
    }

    public func send(_ action: R.Action) {
        precondition(Thread.isMainThread)
        reducer.reduce(state: &state, action: action)
    }

    public func send(_ actions: [R.Action]) {
        actions.forEach(send)
    }
}
