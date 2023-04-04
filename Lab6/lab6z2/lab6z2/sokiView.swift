//
//  sokiView.swift
//  lab6z2
//
//  Created by student on 30/03/2023.
//

import SwiftUI

struct sokiView: View {
    @Binding var sok: String
    var body: some View {
        VStack {
            Button(){
                sok = "orange"
            }label: {
                Image("orange")
                    .resizable()
                    .frame(width: 300.0, height: 200.0)
            }
            Button(){
                sok = "apple"
            }label: {
                Image("apple")
                    .resizable()
                    .frame(width: 300.0, height: 200.0)
            }
            Button(){
                sok = "grape"
            }label: {
                Image("grape")
                    .resizable()
                    .frame(width: 300.0, height: 200.0)
            }
        }
    }
}

struct sokiView_Previews: PreviewProvider {
    static var previews: some View {
        sokiView(sok: .constant("orange"))
    }
}
