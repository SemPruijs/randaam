//
//  ContentView.swift
//  Randaam
//
//  Created by Sem Pruijs on 10/10/2019.
//  Copyright © 2019 Sem Pruijs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                
            }
            Button(action: {
//Change information
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
