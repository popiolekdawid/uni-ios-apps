//
//  ContentView.swift
//  Lab2
//
//  Created by student on 09/03/2023.
//

import SwiftUI

struct ContentView: View {
    let tablica_kolorow:[Color] = [.red, .orange, .yellow, .green, .blue, .purple]

    var body: some View {
        ZStack {
            ForEach(0..<tablica_kolorow.count, id: \.self) {
                Rectangle()
                    .fill(tablica_kolorow[$0])
                    .frame(width: 200, height: 200)
                    .offset(x: CGFloat($0) * 10.0,y: CGFloat($0) * 10.0)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
