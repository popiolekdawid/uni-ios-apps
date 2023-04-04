//
//  kantoView.swift
//  app4
//
//  Created by student on 16/03/2023.
//




import Foundation
import SwiftUI



struct KantorView: View {
    let currenciesInPLN = [
        "usd": 4.20,
        "eur": 4.70,
        "chf": 6.33,
        "pln": 1.00,
    ]
     
    func exchange (amoutToBePaid : Double, initialCurrency : String, finalCurrency : String) -> Double {
        var result : Double
        result = (amoutToBePaid * currenciesInPLN[initialCurrency]!)/(currenciesInPLN[finalCurrency]!)
        return result
    }
    
    let waluty = ["usd","eur","chf","pln"]
    @State private var wybrana_waluta_zrodlowa = "usd"

    @State private var wybrana_waluta_docelowa = "usd"
    
    @State private var ile_waluty_docelowej_kupuje = "1"
    
    @State private var ile_place = "1.0"
    
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text("Kantor").font(.system(size: 20, weight: .bold, design: .serif))
        
            Spacer()
            
            HStack(){
                
                Text("Place waluta: ")
                // picker z waluta 1
                Picker("Rozmiar", selection: $wybrana_waluta_docelowa){
                    ForEach(waluty, id: \.self){
                        Text(String($0))
                    }
                    
                }
                
                
                
            }
            
            HStack{
                Text("Kupuje walute: ")
                Picker("Producent", selection: $wybrana_waluta_zrodlowa){
                    ForEach(waluty, id: \.self){
                        Text(String($0))
                    }
                    
                    
                    
                }
                .padding()
                
            }
    
            HStack{
                TextField("Chce kupic: ", text: $ile_waluty_docelowej_kupuje).frame(width: 200)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            Button("Zamow",action: {

                ile_place = String(exchange(amoutToBePaid: Double(ile_waluty_docelowej_kupuje)!, initialCurrency: wybrana_waluta_zrodlowa, finalCurrency: wybrana_waluta_docelowa))
                
                
            }).buttonStyle(.bordered)
                

            Text("do zaplaty: \(ile_place)")
                
        
            
            
            Spacer()
            
            AsyncImage(url: URL(string: "https://finanse21.pl/images/zdjecie/definicja-reklamy.jpg")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Color.gray
            }
            .frame(width: 200, height: 200)
            
        }
        
        
    }}
