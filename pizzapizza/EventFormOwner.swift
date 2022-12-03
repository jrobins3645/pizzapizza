//
//  EventFormOwner.swift
//  Learnity
//
//  Created by Ryan Chanel on 11/29/22.
//

import SwiftUI

struct EventFormOwner: View {
    @State private var name: String = ""
    @State private var eventName: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var eventDescription: String = ""
    @State private var eventPhoto: String = ""
    @State private var isSaved: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color(red: 0.1568627450980392, green: 0.3843137254901961, blue: 0.7215686274509804))
                            .frame(width: 369, height: 427.0)
                        
                        VStack {
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color(red: 0.1568627450980392, green: 0.3843137254901961, blue: 0.7215686274509804))
                                    .frame(width: 369, height: 50)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Please complete the form below!")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                
                            } .padding(.bottom, 14.0)
                            
                            VStack {
                                
                                VStack {
                                    Text("Name")
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal, -172.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    TextField("Name", text: $name)
                                        .background(Color.white)
                                        .cornerRadius(6)
                                }
                                
                                VStack {
                                    Text("Email").padding(/*@START_MENU_TOKEN@*/.horizontal, -172.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    TextField("Email", text: $email)
                                        .background(Color.white)
                                        .cornerRadius(6)
                                    
                                    
                                }
                                
                                VStack {
                                    Text("Phone")
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal, -172.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    TextField("Phone", text: $phone)
                                        .background(Color.white)
                                        .cornerRadius(6)
                                }
                                VStack {
                                    Text("Event Name")
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal, -172.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    TextField("Event Name", text: $eventName)
                                        .background(Color.white)
                                        .cornerRadius(6)
                                }
                                VStack {
                                    Text("Event Description")
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal, -172.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    TextField("Event Description", text: $eventDescription)
                                        .background(Color.white)
                                        .cornerRadius(6)
                                }
                                VStack {
                                    Text("Event Photo")
                                        .padding(/*@START_MENU_TOKEN@*/.horizontal, -172.0/*@END_MENU_TOKEN@*/)
                                    TextField("Event Photo", text: $eventPhoto)
                                        .background(Color.white)
                                        .cornerRadius(6)
                                    ZStack{
                                        Text("Event will appear in your upcoming events ")
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.center)
                                            .padding(.all, 15.0)
                                        
                                        HStack{
                                            NavigationLink(destination: File1()){
                                                Image("deletebutton")
                                                
                                            }  .padding(.leading, 190.0)
                                                .offset(y: 55)
                                        }
                                        NavigationLink{
                                            File2()
                                        } label: {
                                            Text("navigationlink")
                                        }
                                        .frame(width: 0, height: 0)
                                        .hidden()
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                            }
                                            
                                        }
                                        
                                        
                                        Button(action: {
                                            self.isSaved = true
                                        }) {
                                            Image(self.isSaved == false ? "saveButton" : "Button")
                                            
                                        }
                                        .padding(.leading, -155.0)
                                        .offset(y: 55)
                                        
                                    }
                                    
                                    
                                }.foregroundColor(.white)
                                
                                
                                
                            }
                            .padding(.all, 23)
                        }
                    }.padding(.top, 20)
                    
                    
                }
            }
        }
    }
}

struct EventFormOwner_Previews: PreviewProvider {
    static var previews: some View {
        EventFormOwner()
    }
}
