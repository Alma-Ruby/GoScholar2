//
// Fafsa.swift
// GoScholar
//
// Created by Scholar on 6/11/24.
//
import SwiftUI
struct Fafsa: View {
  var body: some View {
    ZStack{
        Color.green.opacity(0.3)
            .ignoresSafeArea()
      NavigationStack{
        VStack{
          HStack{
            Menu("☰"){
              NavigationLink(destination: All()){
                Text("All")
              }
            NavigationLink(destination: CatPage()){
            Text("Categories")
                }
              NavigationLink(destination: Quiz()) {
                Text("Quiz")
              }
              NavigationLink(destination: Fafsa()) {
                Text("FAFSA Info")
              }
              NavigationLink(destination: AboutUs()){
                Text("About Us 💕")
              }
            }
            .position(x:-4,y:2)

            .font(.title)
            .foregroundColor(Color(.black))
            .padding()
            Text("Decoding FASFA")
              .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
              .fontWeight(.bold)
              .position(x:-75,y:40)
            
          }
          Spacer()
          Spacer()
          Spacer()
          Spacer()
          Spacer()
            
          Text("General Infomrmation:")
            .padding()
          ScrollView{
            Text("Free Application for Federal Student Aid, or FAFSA, is a (as the name says) is a federal student aid that is determined based off the financial standing of your household. This includes collecting tax information from your gaurdian(s) and all information related to your personal finances and anyone else in your residence, social security number or individual taxpayer identification number; yours and/or your parents' income, additional questions about your parents' assets and financial information. ")
          }
          .padding()
          ScrollView{
            Text("You apply if you are going to be in college in the school year for the FAFSA date. Ex: If you are going to be a college freshman in 2025 - 2026, you apply to the 2025 - 2026. Typically you fill it out once you get into colleges and are trying to determine which one to go to. Fill it out BEFORE you commit.")
          }
            .padding()
          Text("2023 - 2024 Deadline")
          ScrollView{
            Text(" The FAFSA form must be submitted by 11:59 p.m. Central time (CT) on June 30, 2025. Any corrections or updates must be submitted by 11:59 p.m. CT on Sept. 14, 2025")
          }
            .padding()
          Text("Tips")
          Text(" Resubmit every year and complete it with your family members nearby so you can ask them questions.")
            .padding()
          Link(destination: URL(string:"https://studentaid.gov/fsa-id/sign-in/landing?continueTo=fafsa")!) {
            Text("Apply to FAFSA now!!!")
          }
        }
      }
      .padding()
      .frame(width: 360, height: 735)
      .background(Rectangle()
        .foregroundColor(.white))
      .cornerRadius(15)
      .shadow(radius:15)
      .padding(.top, 25.0)
      
      .navigationTitle("FASFA")
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarHidden(true)
    }
  }
}
#Preview {
  Fafsa()
}
