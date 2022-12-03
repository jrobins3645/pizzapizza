//
//  second.swift
//  pizzapizza
//
//  Created by Jeff on 11/17/22.
//

import SwiftUI

class Order: ObservableObject {
    @Published var includesMozzerella = false
    @Published var includesTomato = false
    @Published var includesPineapple = false
    @Published var qantity = 0
}

struct second: View {
   
    @ObservedObject var order = Order()

    var body: some View {
        VStack (spacing: 12.0) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Toggle(isOn: $order.includesMozzerella, label: {
                Text("Include Mozzerella")
            })
            Toggle(isOn: $order.includesTomato, label: {
                Text("Includes Tomato")
            })
            Toggle(isOn: $order.includesPineapple, label: {
                Text("Includes Tomato")
            })
            if order.includesMozzerella {
                Text("Mozzerella is good.")
            }
        }
    }
}

struct second_Previews: PreviewProvider {
    static var previews: some View {
        second()
    }
}
