//
//  ContentView.swift
//  app4
//
//  Created by student on 16/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
       
            KantorView()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
