//
//  ContentView.swift
//  Lab3.2
//
//  Created by student on 09/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var firma = ""
    @State private var rozmiar = ""
    @State private var ilosc = ""
    var arr = [["Debica", 15, 2], ["Debica", 16, 2], ["Debica", 17, 2], ["Michelin", 15, 2], ["Michelin",16, 2], ["Michelin",17, 2], ["Toyo",15, 2], ["Toyo",16, 2], ["Toyo",17, 2]]
    
    var body: some View {
        VStack {
            Text("Firma opony:")
            Picker(selection: $firma, label: Text("Firma")) {
                Text("Debica")
                Text("Michelin")
                Text("Toyo")
            }
            Text("Rozmiar Opony:")
            Picker(selection: $rozmiar, label: Text("Rozmiar")) {
                Text("15")
                Text("16")
                Text("17")
            }
            TextField(
                "Ilosc: ",
                text: $ilosc
            )
            .frame(width: 100)
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.purple, lineWidth: 5))
            Button(action: {
                for m in 0..<arr.count{
                    if(arr[m][0] as! String == firma){
                        if(arr[m][1] as! String == rozmiar){
                            print(arr[m][2])
                        }
                    }
                }
            })
            {
                Text("Dzialanie")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(35)
                    .foregroundColor(.blue)
                    .padding(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
