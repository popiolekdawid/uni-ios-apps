//
//  SecondView.swift
//  lab6z1
//
//  Created by student on 30/03/2023.
//

import SwiftUI

struct SecondView: View {
    @Binding var name: String
    var body: some View {
        VStack {
            Text("Author name:")
            TextField("Enter your name", text: $name)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(name: .constant(""))
    }
    
}
