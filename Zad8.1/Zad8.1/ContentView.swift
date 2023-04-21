//
//  ContentView.swift
//  Zad8.1
//
//  Created by student on 20/04/2023.
//

import SwiftUI

struct Wydarzenie{
    var nazwa: String
    let ikona: String
    var czasTrwania: Float
}

struct ContentView: View {
    @State var wydarzenia =
    [
        Wydarzenie(nazwa: "wydarzenie1", ikona: "ford", czasTrwania: 2),
        Wydarzenie(nazwa: "wydarzenie2", ikona: "fiat", czasTrwania: 6),
        Wydarzenie(nazwa: "wydarzenie3", ikona: "volkswagen", czasTrwania: 13),
        Wydarzenie(nazwa: "wydarzenie4", ikona: "mitsubishi", czasTrwania: 60)
    ]
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ForEach(wydarzenia, id: \.nazwa){ event in NavigationLink(destination: CarView(wydarzenia: $wydarzenia)){
                        HStack{
                            Image(event.ikona)
                                .resizable()
                                .frame(width: 30, height: 30,alignment: .center)
                                .scaledToFit()
                            Text(event.nazwa)
                            Text(String(event.czasTrwania))
                        }
                    }
                    }
                }
            }
            .navigationTitle("Samochody")
            .listStyle(.insetGrouped)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
