//
//  kawaView.swift
//  lab6z2
//
//  Created by student on 30/03/2023.
//

import SwiftUI

struct kawaView: View {
    @Binding var kawa: String
    var body: some View {
        Button("Kenya"){
            kawa = "Kenya"
        }
        
        Button("Mexico"){
            kawa = "Mexico"
        }
        
        Button("Peru"){
            kawa = "Peru"
        }
        
        Button("Nigeria"){
            kawa = "Nigeria"
        }
    }
}

struct kawaView_Previews: PreviewProvider {
    static var previews: some View {
        kawaView(kawa: .constant(""))
    }
}
