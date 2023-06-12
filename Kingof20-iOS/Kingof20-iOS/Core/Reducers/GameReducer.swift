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

extension GameStore: DropReceivableObservableObject {
    public typealias DropReceivable = Space
    
    public func setDropArea(_ dropArea: CGRect, on dropReceiver: Space) {
        state.board.boardMatrix[dropReceiver.row][dropReceiver.column].updateDropArea(with: dropArea)
    }
}

public struct GameReducer: Reducer {
    public typealias State = GameState
    
    public init() { }
    public func reduce(state: inout GameState, action: GameAction) {
        switch action {
        case let placeTile as RackAction.Place:
            let position = placeTile.position
            let tile = placeTile.tile

            let spaceDroppedOn = state.board.boardMatrix.select(where: {$0.getDropArea()!.contains(position)})
            
            if spaceDroppedOn != nil {
                let templateForSpaceUpdate = Space(row: spaceDroppedOn!.row, column: spaceDroppedOn!.column, tile: tile)
                
                state.board.boardMatrix[templateForSpaceUpdate.row][templateForSpaceUpdate.column] = templateForSpaceUpdate
            }
        default:
            break
        }
    }
}
