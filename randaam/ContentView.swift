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
        VStack(spacing: 15) {
            Text(generateEmoji)
                .font(.system(size: 150))
            Text( personInfoGenerator.generateJob())
            Text(personInfoGenerator.generateLivingPlease())
            Text(personInfoGenerator.generateAge())
            Text(personInfoGenerator.generateSalary())
            Button(action: {
                self.generateEmoji = personInfoGenerator.generateEmojis()
            }) {
                Text("next randaam")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
