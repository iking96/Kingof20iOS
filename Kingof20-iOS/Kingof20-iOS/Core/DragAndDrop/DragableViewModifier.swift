//
//  DragableView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 5/30/23.
//

import SwiftUI

struct DraggableView: ViewModifier {
    @State var offset = CGSize.zero

    var onDragged: ((CGPoint) -> Void)? = nil
    var onDropped: ((CGPoint) -> Void)? = nil
    
    init(onDragged: @escaping ((CGPoint) -> Void), onDropped: @escaping ((CGPoint) -> Void)) {
        self.onDragged = onDragged
        self.onDropped = onDropped
    }
    
    init(onDragged: @escaping ((CGPoint) -> Void)) {
        self.onDragged = onDragged
        self.onDropped = defaultOnDropped
    }
    
    init(onDropped: @escaping ((CGPoint) -> Void)) {
        self.onDragged = defaultOnDragged
        self.onDropped = onDropped
    }
    
    init() {
        self.onDragged = defaultOnDragged
        self.onDropped = defaultOnDropped
    }
    
    func body(content: Content) -> some View {
        content
            .offset(x: offset.width, y: offset.height)
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .global)
                .onChanged { value in
                    self.offset = CGSize(
                        width: value.translation.width,
                        height: value.translation.height)
                    (self.onDragged ?? defaultOnDragged)(value.location)
                }
                .onEnded{ value in
                    self.offset = .zero
                    (self.onDropped ?? defaultOnDropped)(value.location)
                })
    }
    
    private func defaultOnDragged(_: CGPoint) -> Void { }
    private func defaultOnDropped(_: CGPoint) -> Void { }
}

// Wrap `draggable()` in a View extension to have a clean call site
extension View {
    func draggable(onDragged: @escaping ((CGPoint) -> Void), onDropped: @escaping ((CGPoint) -> Void)) -> some View {
        return modifier(DraggableView(onDragged: onDragged, onDropped: onDropped))
    }
    
    func draggable(onDragged: @escaping ((CGPoint) -> Void)) -> some View {
        return modifier(DraggableView(onDragged: onDragged))
    }
    
    func draggable(onDropped: @escaping ((CGPoint) -> Void)) -> some View {
        return modifier(DraggableView(onDropped: onDropped))
    }
    
    func draggable() -> some View {
        return modifier(DraggableView())
    }
}
