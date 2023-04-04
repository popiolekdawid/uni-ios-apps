//
//  ContentView.swift
//  lab6z1
//
//  Created by student on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var book = ""
    struct writer{
        var name = ""
        var books = [String]()
    }
    var writers: [writer] = [
        writer(name: "Shakespeare", books: ["Romeo and Juliet", "Hamlet"])
    ]
    //writers.append()
   // writers.append("Murakami", ["ksiazka1", "ksiazka2", "ksiazka3"])
    
    var body: some View {
        NavigationView{
            VStack {
                if writers.contains(where: {$0.name == "Murakami"}) {
                    book = "yes"
                } else {
                    book = "no"
                }
                Text("\(book)")
                Text("Hello, \()!")
                Spacer()
                NavigationLink(
                        destination: SecondView(name:$name),
                        label: {
                            Text("Input author name ->")
                        }
                )
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
