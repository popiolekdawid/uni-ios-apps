//
//  drugiView.swift
//  lab6z1
//
//  Created by student on 30/03/2023.
//

import SwiftUI

struct drugiView: View {
    @Binding var kolor: String
    var body: some View {
        Button("czerwony"){
            kolor = "czerwony"
        }.foregroundColor(.red)
        
        Button("zielony"){
            kolor = "zielony"
        }.foregroundColor(.green)
        
        Button("pomaranczowy"){
            kolor = "pomaranczowy"
        }.foregroundColor(.orange)
        
        Button("fioletowy"){
            kolor = "fioletowy"
        }.foregroundColor(.purple)
    }
}

struct drugiView_Previews: PreviewProvider {
    static var previews: some View {
        drugiView(kolor: .constant("czarny"))
    }
    
}
