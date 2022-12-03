//
//  File2.swift
//  pizzapizza
//
//  Created by Jeff on 12/1/22.
//

import SwiftUI

struct File2: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .padding(.top, -7.0)
        }.frame(width: 260, height: 100)
            .background(Color.red)
            .cornerRadius(5)
            
    }
}

struct File2_Previews: PreviewProvider {
    static var previews: some View {
        File2()
    }
}
