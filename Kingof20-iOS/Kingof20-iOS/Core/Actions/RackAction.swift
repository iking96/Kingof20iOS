//
//  RackAction.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/26/23.
//

import Foundation

public enum RackAction {
    public struct Place: GameAction {
        let space: Space
        
        public init(at space: Space) {
            self.space = space
        }
    }
}
