//
//  ContentView.swift
//  zad51
//
//  Created by student on 23/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Pierwszy widok")
                Path {
                    path in
                    path.move(to: CGPoint(x:0,y:50))
                    path.addLine(to: CGPoint(x:50,y:0))
                    path.addLine(to: CGPoint(x: 100,y:50))
                    path.closeSubpath()
                }
                .fill(Color.red)
                Text("Navigation Link below:")
                NavigationLink(destination: figura2()) {
                    Text("Navigate here.")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
