//
//  ShapesView.swift
//  app4_2
//
//  Created by student on 16/03/2023.
//




import Foundation
import SwiftUI



struct ShapesView: View {
    struct Triangle: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()

            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

            return path
        }
    }
    
    let shape = ["△","⏺","◻"]
    
    @State private var initShape = "◻"
    
    @State private var showTriangle = false
    
    @State private var isOn = false
    var body: some View {
        VStack(alignment: .center) {
            if showTriangle {
                Triangle()
                    .fill(.red)
                    .frame(width: 300, height: 300)
            }
            
            Text("Kantor").font(.system(size: 20, weight: .bold, design: .serif))
        
            Spacer()
            
            HStack(){
                
                Text("Wybierz ksztalt: ")
                // picker z waluta 1
                Picker("Ksztalt", selection: $initShape){
                    ForEach(shape, id: \.self){
                        Text(String($0))
                    }
                    
                }
                
                
                
            }
            
            HStack{
                Toggle("Wlacz ramke", isOn: $isOn)
                .padding()
            }
    

            Button("Narysuj",action: {
                
                if(shape == "△"){
                    showTriangle = true
                }
                if(shape == "◻"){
                    
                }
                if(shape == "⏺"){
                    
                }
                
            }).buttonStyle(.bordered)
            
            
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

