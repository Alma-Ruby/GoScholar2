//
//  Categories.swift
//  GoScholar
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct CatPage: View {
    @Binding var libraryScholar: [String]
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.3)
                    .ignoresSafeArea()
                //                    .frame(width: 360, height: 770)
                //                    .cornerRadius(15)
                //                    .shadow(radius:15)
                HStack{
                    Menu("☰")
                    {
                        NavigationLink(destination: All(libraryScholar: libraryScholar)){
                          Text("All")
                        }
                        NavigationLink(destination: HomePage(libraryScholar: libraryScholar)){
                          Text("Homepage")
                        }
                        NavigationLink(destination: CatPage(libraryScholar: $libraryScholar)){
                        Text("Categories")
                      }
                      NavigationLink(destination: Quiz(libraryScholar: $libraryScholar)) {
                        Text("Quiz")
                      }
                        NavigationLink(destination: Fafsa(libraryScholar: $libraryScholar)) {
                            Text("FAFSA Info")
                        }
                    }
                    .position(x:20,y:-30)
                    
                    Text("GoScholar")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.trailing)
                        .position(x:-115,y:0)
                    
                }
                VStack{
                    Image("icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80.0, height: 80.0)
                        .position(x:200,y:50)
                    
                    Text("Categories")
                        .font(.title)
                        .fontWeight(.bold)
                    //                    .padding(.bottom, 0.0)
                    Spacer()
                    
                    Text("New!")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 360.0, height: 60.0)
                            .cornerRadius(20))
                        .padding()
                    
                    Text("Popular")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 360.0, height: 60.0)
                            .cornerRadius(20))
                        .padding()
                    
                    NavigationLink(destination: BigBank()) {
                        Text("Big Bank") .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                            .foregroundColor(.black)
                            .background(Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                        .padding()}
                    
                    NavigationLink(destination: EasyToApply()) {
                        Text("Easy to Apply")
                            .font(.title) .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                            .foregroundColor(.black)
                            .background(Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                        .padding()}
                    
                    NavigationLink(destination: Minorities()) {
                        Text("Minorities")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                            .foregroundColor(.black)
                            .background(Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                        .padding()}
                    
                    Text("Age(s)")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 360.0, height: 60.0)
                            .cornerRadius(20))
                        .padding()
                    
                    Text("Random")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 360.0, height: 60.0)
                            .cornerRadius(20))
                        .padding()
                    
                    Text("Full Ride")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 360.0, height: 60.0)
                            .cornerRadius(20))
                        .padding()
                    Text("By scholars for scholars")
                }
                .navigationTitle("home")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarHidden(true)
            }
        }
    }
}

//#Preview {
//    CatPage()
//}
