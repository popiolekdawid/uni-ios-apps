//
//  figura2.swift
//  zad51
//
//  Created by student on 23/03/2023.
//

import SwiftUI

struct figura2: View {
    var body: some View {
        VStack {
            ZStack {
                Path {
                    path in
                    path.move(to: .zero)
                    path.addLine(to: CGPoint(x: 200, y: 0))
                    path.addLine(to: CGPoint(x: 200, y: 200))
                    path.addLine(to: CGPoint(x: 0, y: 200))
                    path.addLine(to: .zero)
                    path.closeSubpath()
                }
                .fill(Color.cyan)
                Path {
                    path in
                    path.move(to: CGPoint(x:10, y:10))
                    path.addLine(to: CGPoint(x: 190, y: 10))
                    path.addLine(to: CGPoint(x: 190, y: 190))
                    path.addLine(to: CGPoint(x: 10, y: 190))
                    path.addLine(to: CGPoint(x:10, y:10))
                    path.closeSubpath()
                }
                .fill(Color.white)
                Path {
                    path in
                    path.move(to: CGPoint(x:10, y:10))
                    path.addLine(to: CGPoint(x: 190, y: 10))
                    path.addLine(to: CGPoint(x: 190, y: 100))
                    path.addLine(to: CGPoint(x: 10, y: 100))
                    path.addLine(to: CGPoint(x:10, y:10))
                    path.closeSubpath()
                }
                .fill(Color.yellow)
                Path {
                    path in
                    path.move(to: CGPoint(x:10, y:10))
                    path.addLine(to: CGPoint(x: 100, y: 10))
                    path.addLine(to: CGPoint(x: 100, y: 190))
                    path.addLine(to: CGPoint(x: 10, y: 190))
                    path.addLine(to: CGPoint(x:10, y:10))
                    path.closeSubpath()
                }
                .fill(Color.gray)
            }
            Text("Navigation Link below:")
            NavigationLink(destination: Figura3()) {
                Text("Navigate here.")
            }
        }
    }
}

struct figura2_Previews: PreviewProvider {
    static var previews: some View {
        figura2()
    }
}
