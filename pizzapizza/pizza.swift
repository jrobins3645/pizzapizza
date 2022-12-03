//
//  pizza.swift
//  pizzapizza
//
//  Created by Jeff on 11/16/22.
//

import SwiftUI

struct pizza: View {
    @ObservedObject var order = Order()

    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Pizza🍕"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .foregroundColor(Color.purple)
//            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
//                Text(order.includesMozzerella)
//            }
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Include Mozzerella"/*@END_MENU_TOKEN@*/)
            }
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            }
            Stepper(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(4)/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Range@*/1...10/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            }
            Button(/*@START_MENU_TOKEN@*/"Order"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
         
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct pizza_Previews: PreviewProvider {
    static var previews: some View {
        pizza()
    }
}
