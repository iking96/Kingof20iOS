//
//  ArraySelect.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 6/2/23.
//

import Foundation

extension Array where Element : Collection,
    Element.Iterator.Element : Equatable, Element.Index == Int {
    func select(where predicate: (Element.Iterator.Element) -> Bool) -> Element.Iterator.Element? {
        for (_, row) in self.enumerated() {
            if let j = row.firstIndex(where: predicate) {
                return row[j]
            }
        }

        return nil
    }
}
