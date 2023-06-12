//
//  DropAreaViewModifier.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/31/23.
//

import SwiftUI

struct DropAreaView<T: DropReceivableObservableObject>: ViewModifier {
    @EnvironmentObject var model: T
    let dropReceiver: T.DropReceivable
    
    public func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader { geo in
                    Color.clear
                        .onAppear {
                            model.setDropArea(geo.frame(in: .global), on: dropReceiver)
                        }
                }
            )
    }
}

extension View {
    public func dropReceiver<T: DropReceivableObservableObject>(for dropReceiver: T.DropReceivable, model: T) -> some View {
        modifier(DropAreaView<T>(dropReceiver: dropReceiver))
            .environmentObject(model)
    }
}
