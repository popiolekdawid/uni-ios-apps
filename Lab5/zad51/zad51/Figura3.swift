//
//  Figura3.swift
//  zad51
//
//  Created by student on 23/03/2023.
//

import SwiftUI

struct Figura3: View {
    var body: some View {
        VStack {
            ZStack{
                Text("Widok3")
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(.green)
                    .frame(width: 200, height: 100)
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
            }
        }
    }
}

struct Figura3_Previews: PreviewProvider {
    static var previews: some View {
        Figura3()
    }
}
