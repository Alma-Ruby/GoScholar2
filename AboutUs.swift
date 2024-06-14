//
// AboutUs.swift
// GoScholar
//
// Created by Scholar on 6/11/24.
//
import SwiftUI
struct AboutUs: View {
   
    @Binding var libraryScholar: [String]
  
    var body: some View {
        ZStack{
            Color.green.opacity(0.3)
                .ignoresSafeArea()
            
            ScrollView{
                NavigationStack{
                    VStack{
                        Menu("☰"){
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
                        .position(x:20,y:-0)
                        
                        Text("GoScholar")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                            .position(x:-115,y:0)
                        
                        
                    }
                    .font(.title)
                    .foregroundColor(Color(.black))
                        .padding()
                    Text("About Us")
                        .padding()
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    GroupBox( "Alma") {
                        ScrollView{
                            HStack{
                                Text("Hey! My name is Alma Otieno, and I'm a rising sophmore in a school in Nairobi called Rosslyn Academy. In the future I want to study Computer Science, but I'm not sure what in specific. Some of my hobbies are haning out with my friends, listening to music, and exersizing my coding skills!")
                                VStack{
                                    Link(destination: URL(string: "https://www.instagram.com/its_me_agan.00?igsh=aTBndWFrcGwxeHh0")!, label: {
                                        Text("Alma's Insta!")
                                            .background(Rectangle()
                                                .foregroundColor(.white))
                                            .padding()
                                            .cornerRadius(15)
                                    })
                                }
                            }
                        }
                        .padding()
                    }
                    .padding()
                    
                GroupBox( "Meagan") {
                        ScrollView{
                            HStack{
                                Text("Hi, I'm Meagan! We wanted to make this app so that it would be easier for students to learn about and access different types of scholarships. I was excited about this idea because I (at the time of making this app) am a rising senior and I felt as though an app like this would make organizing my thoughts and paying for college a lot easier. I love basketball and reading as well. Thank y'all for using our app! We appreciate it!!! 🩷")
                                VStack{
                                    Link(destination: URL(string: "https://www.instagram.com/its_me_agan.00?igsh=aTBndWFrcGwxeHh0")!, label: {
                                        Text("Meagan's Insta!")
                                            .background(Rectangle()
                                                .foregroundColor(.white))
                                            .padding()
                                            .cornerRadius(15)
                                    })
                                }
                            }
                        }
                        .padding()
                    }
                    .padding()
                    
                    GroupBox( "Sarah") {
                        ScrollView{
                            HStack{
                                Text("Hi! My name is Sarah Babiker, and I’m a junior in high school from Sudan. I’m passionate about aerospace engineering and aerodynamics, and I’m working on my coding skills to hopefully help me in my future career. I really enjoy F1, Tennis, travel, and running!"
                                     )
                                VStack{
                                    Link(destination: URL(string: "https://www.instagram.com/sarahbvbiker?igsh=MXFjMHozMDg1a2t0dg==")!, label: {
                                        Text("Sarah's Insta!")
                                            .background(Rectangle()
                                                .foregroundColor(.white))
                                            .padding()
                                            .cornerRadius(15)
                                        
                                    })
                                }
                            }
                        }
                        .padding()
                    }
                    .padding()

                    
                }
            }
            
                .frame(width: 360, height: 770)
                .background(Rectangle()
                    .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius:15)
                .padding()
        }
      .navigationTitle("About US")
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarHidden(true)
  }
}

//#Preview {
//  AboutUs()
//}
