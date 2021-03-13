//
//  ContentView.swift
//  Randaam
//
//  Created by Sem Pruijs on 10/10/2019.
//  Copyright © 2019 Sem Pruijs. All rights reserved.
//

import SwiftUI

extension Color {
    static func background(for colorScheme: ColorScheme) -> Color {
        if colorScheme == .dark {
            return Color.black
        } else {
            return Color.white
        }
    }
}

let personInfoGenerator = PersonInfoGenerator()

struct ContentView: View {
    @Environment (\.colorScheme) var colorScheme:ColorScheme
    @State private var personInfo = personInfoGenerator.generate()
    var body: some View {
        ZStack {
            if #available(iOS 14.0, *) {
                backgroundColor(rarety: personInfo.rarity, colorScheme: colorScheme)
                    .ignoresSafeArea()
            }
            VStack {
                Text(textRarity(rarety: personInfo.rarity))
                Spacer()
            }
            VStack(spacing: 10) {
                Text(personInfo.emoji)
                    .font(.system(size: 180))
                    .foregroundColor(Color.gray)
                Text("\(personInfo.name) de \(personInfo.object) \(personInfo.action)")
                    .fontWeight(.bold)
                    .padding(.bottom)
                    .font(.system(size: 20))
                Text("\(personInfo.age) jaar oud")
                    .font(.system(size: 20))
                Text("€\(personInfo.salary) / week")
                    .foregroundColor(generateSalaryColor(Salary: personInfo.salary))
                    .font(.system(size: 20))
                Text(personInfo.livingPlace)
                    .font(.system(size: 20))
            }
            Button(action: {
                personInfo = personInfoGenerator.generate()
            }) {
                Text("")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.top)
            }
            RandaamLogo()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
                     .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
    }
}


func generateSalaryColor(Salary: Int) -> Color {
    if Salary >= 990 {
        return Color.purple
    } else if Salary >= 900 {
        return Color.accentColor
    } else if Salary >= 600 {
        return Color.green
    } else if Salary >= 400 {
        return Color.yellow
    } else if Salary >= 200 {
        return Color.orange
    } else {
        return Color.red
    }
}


func textColor(rarety: Int) -> Color {
    switch rarety {
        case 9999..<10000:
            return Color(red: 57 / 255, green: 30 / 255, blue: 214 / 255) //blue
        case 9990..<10000:
            return Color.white
        case 9900..<9990:
            return Color.white
        case 2000..<3000:
            return Color.white
        default:
            return Color.accentColor
    }
}

func backgroundColor(rarety: Int, colorScheme: ColorScheme) -> Color {
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
            return Color.background(for: colorScheme)
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
