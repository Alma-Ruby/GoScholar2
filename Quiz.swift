//
//  Quiz.swift
//  GoScholar
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct Quiz: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.3)
                .ignoresSafeArea()
            NavigationStack{
            VStack {
                HStack{
                    Menu("☰"){
                        NavigationLink(destination: All()){
                            Text("All")
                        }
                        NavigationLink(destination: HomePage()){
                            Text("Homepage")
                        }
                        NavigationLink(destination: CatPage()){
                            Text("Categories")
                        }
                        NavigationLink(destination: Fafsa()) {
                            Text("FAFSA Info")
                        }
                        NavigationLink(destination: AboutUs()) {
                            Text("About Us 💕")}
                    } //MENU
                    .position(x:15,y:16)
                    
                    Text("GoScholar")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.trailing)
                        .position(x:-90,y:20)
                    
                } //HSTACK
                        Text("Quiz!")
                    .offset(x:0, y: -600) // Offset the button to the top-left corner
                            .font(.title)
                            .background(Rectangle()
                                
                                .foregroundColor(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(100)
                                .offset(x:0, y: -600))
            Spacer()
            Spacer()

                    } //VSTACK
            } //NAVSTACK
            
            .padding()
            .frame(width: 360, height: 735)
            .background(Rectangle()
              .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius:15)
            .padding()
        }//ZSTACK
        } //DONT TOUCH
    }

#Preview {
    Quiz()
}
