//
//  Reducer.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/25/23.
//

import Foundation

public protocol Reducer {
    associatedtype State
    associatedtype Action
    func reduce(state: inout State, action: Action)
}
