//
//  ContentView.swift
//  Randaam
//
//  Created by Sem Pruijs on 10/10/2019.
//  Copyright © 2019 Sem Pruijs. All rights reserved.
//

import SwiftUI

let personInfoGenerator = PersonInfoGenerator()


struct ContentView: View {
    @State var generateEmoji = personInfoGenerator.generateEmojis()
    var body: some View {
        ZStack {
            VStack(spacing: 15) {
                   Text(generateEmoji)
                       .font(.system(size: 150))
                   Text( personInfoGenerator.generateJob())
                   Text(personInfoGenerator.generateLivingPlace())
                   Text(personInfoGenerator.generateAge())
                   Text(personInfoGenerator.generateSalary())
            }
            Button(action: {
                self.generateEmoji = personInfoGenerator.generateEmojis()
                let impactFeedbackgenerator = UIImpactFeedbackGenerator(style: .light)
                impactFeedbackgenerator.prepare()
                impactFeedbackgenerator.impactOccurred()
            }) {
                Text("")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.top)
            }
        }
       
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
               ContentView()
                     .previewDevice(PreviewDevice(rawValue: "iPhone 7"))
                    
    }
}
