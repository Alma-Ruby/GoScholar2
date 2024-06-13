//
//  HomePage.swift
//  GoScholar
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI
struct HomePage: View {
@State var name = ""
@State private var NewScholarship = false
//  @Binding var name: String
  var body: some View {
    NavigationStack {
      ZStack {
        Color.green.opacity(0.3)
          .ignoresSafeArea()
        VStack {
          HStack {
            Menu("☰")
            {
              NavigationLink(destination: All()) {
                Text("All")
              }
              NavigationLink(destination: CatPage()) {
                Text("Categories")
              }
              NavigationLink(destination: Quiz()) {
                Text("Quiz")
              }
              NavigationLink(destination: Fafsa()) {
                Text("FAFSA Info")
              }
              NavigationLink(destination: AboutUs()) {
                Text("About Us 💕")
              }
            }
            .frame(width: 12, height: 12)
            Spacer()
//            Symbol(person)
            Text("Hi, \(name)!")
              .font(.title)
              .fontWeight(.semibold)
            Spacer()
          }
          Text("Welcome to")
            .font(.title3)
            .fontWeight(.semibold)
          Text("GoScholar")
            .font(.largeTitle)
            .fontWeight(.bold)
          Image("Logo")
            .aspectRatio(contentMode: .fit)
          Text("My Library:")
            .font(.title)
          Text("Scholarships")
            .padding()
            .background(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))            .cornerRadius(15)
          Spacer()
        }
        .padding()
        .frame(width: 360, height: 735)
        .background(Rectangle()
          .foregroundColor(.white))
        .cornerRadius(15)
        .shadow(radius:15)
        .padding(.top, 25.0)
      }
    }
  }
}
#Preview {
  HomePage()
}
