//
//  ContentView.swift
//  Kingof20-iOS
//
//  Created by Ishmael King on 11/29/22.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
