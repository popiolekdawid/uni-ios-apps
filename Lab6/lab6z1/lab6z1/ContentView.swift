//
//  ContentView.swift
//  lab6z1
//
//  Created by student on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var kolor: String = "czarny"
    var body: some View {
        NavigationView{
            VStack {
                
                if(kolor=="czarny"){
                    Text("Hello World!")
                }
                else if(kolor == "czerwony"){
                    Text("Hello World!")
                        .foregroundColor(.red)
                }else if(kolor == "zielony"){
                    Text("Hello World!")
                        .foregroundColor(.green)
                }
                else if(kolor == "pomaranczowy"){
                    Text("Hello World!")
                        .foregroundColor(.orange)
                }else if(kolor == "fioletowy"){
                    Text("Hello World!")
                        .foregroundColor(.purple)
                }
                Spacer()
                    
                    
                
      NavigationLink(
        destination: drugiView(kolor:$kolor),
        label: {
            Text("Wybierz kolor ->")
        })
            }
            .padding()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
