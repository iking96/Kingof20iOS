//
//  GameReducer.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/26/23.
//

import Foundation

public typealias GameStore = Store<GameReducer>

extension GameStore {
    static var `default`: GameStore {
        let store = GameStore(
            initialState: GameState(),
            reducer: GameReducer()
        )
        
        return store
    }
}

public struct GameReducer: Reducer {
    public typealias State = GameState
    
    public init() { }
    public func reduce(state: inout GameState, action: GameAction) {
        switch action {
        case let placeTile as RackAction.Place:
            let space = placeTile.space
            
            state.board.boardMatrix[space.row][space.column] = space
        default:
            break
        }
    }
}
