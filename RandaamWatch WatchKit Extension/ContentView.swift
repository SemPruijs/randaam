//
//  ContentView.swift
//  RandaamWatch WatchKit Extension
//
//  Created by Sem Pruijs on 3/15/21.
//  Copyright © 2021 Sem Pruijs. All rights reserved.
//

import SwiftUI

let personInfoGenerator = PersonInfoGenerator()

struct ContentView: View {
    @State private var personInfo = personInfoGenerator.generate()
    var body: some View {
        ZStack {
            backgroundColor(rarety: personInfo.rarity)
                .ignoresSafeArea()
            VStack {
                Text(personInfo.emoji)
                    .padding()
                    .font(.system(size: 100))
                Text("\(personInfo.name) de \(personInfo.object) \(personInfo.action)")
                    .font(.system(size: 10))
                    .fontWeight(.bold)
            }
        }.gesture(LongPressGesture().onChanged { _ in
            personInfo = personInfoGenerator.generate()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func backgroundColor(rarety: Int) -> Color {
    switch rarety {
        case 9999..<10000:
            return Color(red: 57 / 255, green: 30 / 255, blue: 214 / 255)
        case 9990..<10000:
            return Color(red: 14 / 255, green: 22 / 255, blue: 109 / 255)
        case 9900..<9990:
            return Color(red: 252 / 255, green: 37 / 255, blue: 233 / 255)
        case 2000..<3000:
            return Color(red: 253 / 255, green: 147 / 255, blue: 38 / 255)
        default:
            return Color.black
    }
}


func textRarity(rarety: Int) -> String {
    switch rarety {
        case 9999..<10000:
            return "Super legendarisch!!!"
        case 9990..<10000:
            return "legendarisch!!!"
        case 9900..<9990:
            return "episch!!"
        case 2000..<3000:
            return "zeldzaam!"
        default:
            return "normaal"
    }
}
