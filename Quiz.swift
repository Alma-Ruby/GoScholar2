//

//  Quiz.swift

//  MyFirstApp

//

//  Created by Scholar on 6/13/24.

//

import SwiftUI
struct Quiz: View {
    @State private var ageGroup = "13-15"
    @Binding var libraryScholar: [String]

    
    let ageGroups = ["13-15", "16-17","18-21","22+"]
    
    @State private var race = "Asian"
    
    let races = ["Asian", "Black or African American","Native American or Alaska Native","Native Hawaiian or Other Pacific Islander","Do not wish to respond"]
    
    @State private var coverageType = "Full ride"
    
    let coverageTypes = ["Full ride","Partial"]
    
    @State private var gender = "Female"
    
    let genders = ["Female", "Male","Non-binary","Do not wish to respond"]
    
    @State private var scholarshipMatch = ""
    
    var body: some View {
        
        ZStack{
            
            Color.green.opacity(0.3)
            
                .ignoresSafeArea()
            ScrollView{
                HStack{
                    Menu("☰"){
                        NavigationLink(destination: All(libraryScholar: libraryScholar)){
                            Text("All")
                        }
                        NavigationLink(destination: HomePage()){
                            Text("Homepage")
                        }
                        NavigationLink(destination: CatPage(libraryScholar: $libraryScholar)){
                            Text("Categories")
                        }
                        NavigationLink(destination: Fafsa(libraryScholar: $libraryScholar)) {
                            Text("FAFSA Info")
                        }
                        NavigationLink(destination: AboutUs(libraryScholar: $libraryScholar)) {
                            Text("About Us 💕")}
                    }
                    .position(x:-4,y:2)

                    VStack {
                        
                        Spacer()
                        
                        
                        
                        Text("Scholarship Quiz")
                        
                            .font(.largeTitle)
                        
                            .fontWeight(.heavy)
                        
                        Text("Find your perfect scholarship match!")
                        
                            .padding()
                        
                        
                        
                        //            ZStack {
                        
                        //                Color.green.opacity(0.3)
                        
                        //                        .ignoresSafeArea()
                        
                        Spacer()
                        
                        
                        
                        // Question 1: Age Group
                        
                        Text("What is your age group?")
                        
                            .fontWeight(.semibold)
                        
                            .font(.title3)
                        
                        Picker("Age Group", selection: $ageGroup) {
                            
                            ForEach(ageGroups, id: \.self) {
                                
                                Text($0)
                                
                                    .font(.callout)
                                
                            }
                            
                            
                            
                        }
                        
                        .pickerStyle(.menu)
                        
                        .padding()
                        
                        
                        
                        // Question 2: Race
                        
                        Text("What is your race?")
                        
                            .font(.title3)
                        
                            .fontWeight(.semibold)
                        
                        Picker("Race", selection: $race) {
                            
                            ForEach(races, id: \.self) {
                                
                                Text($0)
                                
                                    .font(.callout)
                                
                            }
                            
                        }
                        
                        
                        
                        .pickerStyle(MenuPickerStyle())
                        
                        .padding()
                        
                        
                        
                        // Question 3: Coverage Type
                        
                        Text("What coverage are you looking for")
                        
                            .fontWeight(.semibold)
                        
                            .font(.title3)
                        
                        Picker("Race", selection: $coverageType) {
                            
                            ForEach(coverageTypes, id: \.self) {
                                
                                Text($0)
                                
                                    .font(.callout)
                                
                            }
                            
                        }
                        
                        
                        
                        .pickerStyle(MenuPickerStyle())
                        
                        .padding()
                        
                        
                        
                        // Question 4: Application Deadline
                        
                        
                        
                        Text("What gender do you identify as?")
                        
                            .fontWeight(.semibold)
                        
                            .font(.title3)
                        
                        Picker("Gender", selection: $gender) {
                            
                            ForEach(genders, id: \.self) {
                                
                                Text($0)
                                
                                    .font(.callout)
                                
                            }
                            
                            .pickerStyle(MenuPickerStyle())
                            
                            .padding()
                        }
                            
                            
                            Button("Submit") {
                                
                                if (ageGroup == "25+" && race == "Black or African American"){
                                    
                                    scholarshipMatch = "Amoa-Koi Scholarship!"
                                    
                                }
                                
                                if ((gender == "Male" && ageGroup == "13-15") ||  (gender == "Male" && ageGroup == "16-17")) {
                                    
                                    scholarshipMatch = "Palmetto Men's Club Purpose Scholarship!"
                                    
                                }
                                
                                if (gender == "Female") {
                                    
                                    scholarshipMatch = "Carol B. Warren, You are Loved Scholarship!"
                                    
                                }
                                
                                if ((gender == "Female" && race == "Black or African American" )||( race == "Native American or Alaska Native" && ageGroup == "18-21")) {
                                    
                                    scholarshipMatch = "Minority Women in STEM Financial Need Scholarship!"
                                    
                                }
                                
                                if ((ageGroup == "18-21")||(ageGroup == "22+")) {
                                    
                                    scholarshipMatch = "Maureen C. Pace Memorial Nursing Scholarship!"
                                    
                                }
                                
                                if (ageGroup == "18-21") {
                                    
                                    scholarshipMatch = "Equal Access I.M.S.A Scholarship!"
                                    
                                }
                                
                                if ((ageGroup == "18-21")||(ageGroup == "22+")) {
                                    
                                    scholarshipMatch = "Movers and Shakers Scholarship!"
                                    
                                }
                                
                                if (gender == "Female" && ageGroup == "18-21") {
                                    
                                    scholarshipMatch = "Women in AeroSpace Foundation Scholarship!"
                                    
                                }
                                
                                
                                
                                //                        }
                                
                                //                        .padding()
                                
                                //                        .padding()
                                
                                //                        .frame(width: 360, height: 760)
                                
                                //                        .background(Rectangle()
                                
                                //                            .foregroundColor(.white))
                                
                                //                        .cornerRadius(15)
                                
                                //                        .shadow(radius:15)
                                
                                //                        .padding()
                                
                                
                                
                            }
                            
                            Text(scholarshipMatch)
                            
                            
                            
                        }
                        
//                        Spacer()
                        
                    }
                    
                    .padding()
                    
                    .frame(width: 360, height: 760)
                    
                    .background(Rectangle()
                                
                        .foregroundColor(.white))
                    
                    .cornerRadius(15)
                    
                    .shadow(radius:15)
                    
                    .padding()
                    
                    
                    
                }
                
                
                
            }
        
        
        
    }
    
//    struct ScholarshipQuizView_Previews: PreviewProvider {
//        
//        static var previews: some View {
//            Quiz(libraryScholar: $libraryScholar)
//            
//        }
//        
//    }
}
