//
//  Ernest Example.swift
//  pizzapizza
//
//  Created by Jeff on 11/30/22.
//

import SwiftUI

struct Ernest_Example: View {
    
    @ObservedObject var order = Order()

    
    var body: some View {
        if order.includesMozzerella {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
       
    }
}

struct Ernest_Example_Previews: PreviewProvider {
    static var previews: some View {
        Ernest_Example()
    }
}
