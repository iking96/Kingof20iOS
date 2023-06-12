//
//  DropReceiver.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/31/23.
//

import SwiftUI

public protocol DropReceiver {
    var dropArea: CGRect? { get set }
    mutating func updateDropArea(with newDropArea: CGRect)
    func getDropArea() -> CGRect?
}

extension DropReceiver {
    public mutating func updateDropArea(with newDropArea: CGRect) {
        self.dropArea = newDropArea
    }
    
    public func getDropArea() -> CGRect? {
        dropArea ?? nil
    }
}
