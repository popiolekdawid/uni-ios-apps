//
//  ContentView.swift
//  lab6z2
//
//  Created by student on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var sok: String = ""
    @State var kawa: String = ""
    var body: some View {

        NavigationView{
            VStack {
                Text("Order").bold()
                Spacer()
                
                Text("Juice:")
                Text(sok)
                Spacer()
                
                Text("Coffee:")
                Text(kawa)
                Spacer()
                
                NavigationLink(
                  destination: sokiView(sok:$sok),
                  label: {
                      Text("Choose juice")
                  })
                
                NavigationLink(
                  destination: kawaView(kawa:$kawa),
                  label: {
                      Text("Choose coffe")
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
