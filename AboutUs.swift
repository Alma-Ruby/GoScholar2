//
// aboutUs.swift
// GoScholar
//
// Created by Scholar on 6/11/24.
//
import SwiftUI
struct aboutUs: View {
  var body: some View {
    ZStack{
      ScrollView{
        NavigationStack{
          VStack{
            Menu("☰"){
              NavigationLink(destination: CatPage()){
                Text("Categories")
              }
              NavigationLink(destination: All()){
                Text("All")
              }
              NavigationLink(destination: Filter()) {
                Text("Filter")
              }
              NavigationLink(destination: Filter()) {
                Text("Quiz")
              }
              NavigationLink(destination: Fafsa()) {
                Text("FAFSA")
              }
              NavigationLink(destination: aboutUs()){
                Text("About Us :two_hearts:")
              }
            }
          }
          .font(.title)
          .foregroundColor(Color(.black))
          Spacer()
            .padding()
          Text("About Us")
            .padding()
          GroupBox( "Alma") {
            ScrollView{
              HStack{
                Text("")
                VStack{
                  Text("Alma...")
                    .padding()
                  Link(destination: URL(string: "https://bold.org/scholarships/minority-women-in-stem-financial-need-scholarship/")!, label: {
                    Text("Alma's Insta!")
                  })
                }
              }
            }
          }
          GroupBox( "Meagan") {
            ScrollView{
              HStack{
              Image("mepic")
                  .resizable()
                Text("")
                VStack{
                  Text("Meagan...")
                    .padding()
                  Link(destination: URL(string: "https://bold.org/scholarships/minority-women-in-stem-financial-need-scholarship/")!, label: {
                    Text("Alma's Insta!")
                  })
                }
              }
            }
          }
          GroupBox( "Sarah") {
            ScrollView{
              HStack{
                Text("")
                VStack{
                  Text("Sarah...")
                    .padding()
                  Link(destination: URL(string: "https://bold.org/scholarships/minority-women-in-stem-financial-need-scholarship/")!, label: {
                    Text("Sarah's Insta!")
                  })
                }
              }
            }
          }
        }
      }
    }
      .navigationTitle("About US")
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarHidden(true)
  }
}
#Preview {
  aboutUs()
}
