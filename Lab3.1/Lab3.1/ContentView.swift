//
//  ContentView.swift
//  Lab3.1
//
//  Created by student on 09/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0;
    var body: some View {
        PanelView(counter: $counter)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
