//
//  LogIn.swift
//  GoScholar
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct LogIn: View {
    
    @State /*private*/ var name = ""
    @State /*private*/ var password = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        VStack(alignment: .leading, content: {
                            Text("Hi there!")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Text("Welcome back.")
                                .font(.title3)
                                .fontWeight(.semibold)
                        })
                        
                        Image("icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                        
                    }
                    .padding()
                    VStack(alignment: .leading, content: {
                        Text("First Name:")
                            .font(.title3)
                            .fontWeight(.bold)
                        TextField("‎‎‎‎‎_______________________________", text: $name)
                            .multilineTextAlignment(.leading)
                        
                        
                        Text("Password:")
                            .font(.title3)
                            .fontWeight(.bold)
                        TextField("‎‎‎‎‎_______________________________", text: $password)
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        
                        VStack(alignment: .center, content: {  NavigationLink(destination: HomePage(name: name)) {
                            Text("Log In")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 300, height: 50)
                                .background(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9)) .cornerRadius(15)
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
                
                //DONT TOUCH BELOW
            }
        }
    }
}


//#Preview {
//    LogIn()
//}
