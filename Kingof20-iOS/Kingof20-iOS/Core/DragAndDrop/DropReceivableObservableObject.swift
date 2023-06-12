//
//  DropReceivableObservableObject.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/31/23.
//

import SwiftUI

public protocol DropReceivableObservableObject: ObservableObject {
    associatedtype DropReceivable: DropReceiver
    
    func setDropArea(_ dropArea: CGRect, on dropReceiver: DropReceivable)
}
