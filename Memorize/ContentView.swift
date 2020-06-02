//
//  ContentView.swift
//  Memorize
//
//  Created by Chen Wang on 2020/5/31.
//  Copyright © 2020 Chen Wang. All rights reserved.
//

import SwiftUI

struct ContentView: View { //ContentView behaviors like a view
    var body: some View {
        return HStack(content: {
            ForEach(0..<4, content: { index in
                CardView(isFaceUp: true)
            })
        })
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
