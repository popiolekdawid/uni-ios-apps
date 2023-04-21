//
//  CarView.swift
//  Zad8.1
//
//  Created by student on 20/04/2023.
//

import SwiftUI

struct CarView: View {
    @Binding var wydarzenia: [Wydarzenie]
    @State private var isEditing = false
    
    var body: some View {
        TextField(
                "User name (email address)",
                text: $wydarzenia[0].nazwa
            )
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)

        Text("Nazwa wydarzenia")
        Text(wydarzenia[0].nazwa)
        Slider(
            value: $wydarzenia[0].czasTrwania,
                    in: 0...60,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                )
        Text("Czas wydarzenia")
        Text(String(wydarzenia[0].czasTrwania))
    }
}
