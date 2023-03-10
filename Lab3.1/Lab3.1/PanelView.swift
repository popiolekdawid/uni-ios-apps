//
//  PanelView.swift
//  Lab3.1
//
//  Created by student on 09/03/2023.
//

import SwiftUI

struct PanelView: View {
    @Binding var counter : Int
    var body: some View {
        VStack {
            Text("Wcisnij przycisk:")
            Button(action: { counter += 1})
            {
                Text("Dzialanie")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(35)
                    .foregroundColor(.blue)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.purple, lineWidth: 5))
            }
            Text("Wcisnieto \(counter) razy")
            /*
            Button(action: {print("Wcisnieto")})
            {
                Image(systemName: "trash")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }*/
        }
        .padding()

    }
}

struct PanelView_Previews: PreviewProvider {
    static var previews: some View {
        PanelView(counter: .constant(0))
    }
}
