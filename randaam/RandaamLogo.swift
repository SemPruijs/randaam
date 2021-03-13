//
//  RandaamLogo.swift
//  Randaam
//
//  Created by Sem Pruijs on 3/13/21.
//  Copyright © 2021 Sem Pruijs. All rights reserved.
//

import SwiftUI

struct RandaamLogo: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("RANDAAM")
                    .fontWeight(.heavy)
                    .padding([.bottom, .trailing])
                    .font(.system(size: 20))
            }
        }
    }
}

struct RandaamLogo_Previews: PreviewProvider {
    static var previews: some View {
        RandaamLogo()
    }
}
