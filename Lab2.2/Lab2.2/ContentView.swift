//
//  ContentView.swift
//  Lab2.2
//
//  Created by student on 09/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .bottom){
            Image("pieski")
                .resizable()
                .scaledToFit()
            HStack {
                VStack (alignment: .leading){
                    Text("Pieski\nAutor Nieznany")
                        .foregroundColor(.blue)
                }
                Spacer()
            }.background(.white.opacity(0.5)).border(.blue, width: 2)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
