//
//  SignUp.swift
//  GoScholar
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct SignUp: View {
    
    @Binding var name : String
    @State /*private*/ var password = ""
    @State /*private*/ var lastName = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        VStack(alignment: .leading, content: {
                            Text("Welcome!")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Text("Create an account.")
                                .font(.title3)
                                .fontWeight(.semibold)
                        })
                        Image("Logo")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                        
                    }
                    .padding()
                    VStack(alignment: .leading, content: {
                        Text("First Name:")
                            .font(.title3)
                            .fontWeight(.bold)
                        TextField("‎‎‎‎‎____________________________________", text: $name)
                        
                        Text("Last Name:")
                            .font(.title3)
                            .fontWeight(.bold)
                        TextField("‎‎‎‎‎____________________________________", text: $lastName)
                        
                        Text("Password:")
                            .font(.title3)
                            .fontWeight(.bold)
                        TextField("‎‎‎‎‎____________________________________", text: $password)
                        
                        
                        
                        VStack(alignment: .center, content: {  NavigationLink(destination: HomePage(name: name)) {
                            Text("Sign Up")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 300, height: 50)
                                .background(.green.opacity(0.3))
                                .cornerRadius(15)
                        }
                        })
                        
                        
                        
                        .padding()
                        
                        
                        
                        
                        
                        
                    })
                    .padding()
                }
                .background(Rectangle()
                    .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius:15)
                .padding()
                
                
            }
        }
    }
    
}
//    #Preview {
//        SignUp()
//    }
