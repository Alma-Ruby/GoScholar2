//
//  All.swift
//  GoScholar
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct All: View {
//    @State var libraryScholar = "String"
    @State var libraryScholar: [String] 
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.3)
                .ignoresSafeArea()
            NavigationStack{
                ScrollView {
                    
                    
                    VStack{
                        Menu("☰"){
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
                        NavigationLink(destination: AboutUs(libraryScholar: $libraryScholar)) {
                            Text("About Us 💕")
                            }
                        }
                        .position(x:20,y:25)
                        
                        Text("GoScholar")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                            .position(x:80,y:0)
                        
                            .font(.title)
                            .foregroundColor(Color(.black))
                        Spacer()
                        
                        Text("All Scholarships")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        
                        GroupBox() {
                            ScrollView {
                                VStack{
                                    HStack{
                                        Text("Palmetto Men's Club Purpose Scholarship")
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .font(.subheadline)
                                        Button{
                                            libraryScholar.append("Palmetto Men's Club Purpsose Scholarship")
                                        }      label: {
                                            Text("Add to Library +")
                                        }
                                    }
                                    
                                    
                                    VStack{
                                        Text("The world needs more positive role models in order to flourish in the future and set a good example for the next generations.Young people who display kindness, drive, and grit serve as exemplars within their generation, leading by example. These role models will undoubtedly bring progress to the world through their academic and professional careers. This scholarship seeks to support young men of character who have the work ethic necessary to achieve all of their goals. Any first-generation male high school student in South Carolina who has at least a 2.8 GPA and demonstrates compassion, tenacity, and purpose may apply for this scholarship.")
                                        Text("$500 ")
                                        Text("Requirements to apply: First-generation male High School studen living in South Carolina with a GPA of 2.8 or more. ")
                                    }
                                }
                            }
                        }
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        
                        
                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("Amoah - Koi Scholarship")
                                    Button{
                                        libraryScholar.append("Amoah - Koi Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("In honor of Daniel Amoah-Koah, a beloved father who valued education and supported his family members as they followed their dreams. ")
                                    Text("$1,000 ")
                                    Text("Requirements to apply: To apply, you must live in Illinois, be Black, and a Graduate student. ")
                                    Text("Due: 06/15/2024")
                                }
                            }
                        }
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        
                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("Carol B. Warren, You are Loved Scholarship")
                                    Button{
                                        libraryScholar.append("Carol B. Warren, You are Loved Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$5,000 ")
                                        .padding()
                                    ScrollView{
                                        Text("This scholarship is in honor of Carol B. Warren, an inspirational woman who overcame obstacles to help the ones she loved. Her father died when she was in 9th grade and she stopped going to school to raise her 4 siblings. Later on. Carol got married and raised 4 daughters, all of which became successful. Carol got her GED in her 50s and inspired her children to continue their learning journey throughout life. ")
                                    }
                                    .padding()
                                    ScrollView{
                                        Text("Requirements to apply: To apply, you must be a female, non-traditional student living in Colorado, Florida, Georgia, South Carolina, or North Carolina (learners who are getting or got their GED will be given preference).")
                                    }
                                    .padding()
                                    Text("Due: 06/15/2024")
                                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))
                                }
                            }
                        }
                        
                        
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("Minority Women in STEM Financial Need Scholarship")
                                    Button{
                                        libraryScholar.append("Minority Women in STEM Financial Need Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$10,100 ")
                                        .padding()
                                    Text("Dr. Marie M Daly was the first African American woman to earn a PhD in chemistry. She was a revolutionary minority female voice in STEM during the 20th century. This scholarship seeks to honor her.")
                                        .padding()
                                    ScrollView{
                                        Text("Requirements to apply: To apply you mush be a BIPOC woman studying STEM at either the UNiversity of Texas at Dallas, University of Texas at Austin. University of North Texas, University of Texas at Arlington, Texas Women's University, or Texas A&M University - College Station.")
                                    }
                                    
                                    .padding()
                                    Text("Due: 06/15/2024")
                                        .padding()
                                    Link(destination: URL(string: "https://bold.org/scholarships/minority-women-in-stem-financial-need-scholarship/")!, label: {
                                        Text("Apply Today!")
                                    })
                                }
                            }
                        }
                        
                        
                        
                        
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("Maureen C. Pace Memorial Nursing Scholarship")
                                    Button{
                                        libraryScholar.append("Maureen C. Pace Memorial Nursing Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$2,000 ")
                                        .padding()
                                    ScrollView{
                                        Text("Mrs. Pace was a beloved wife, mother, and grandmother. As a registered nurse, she dedicated her life to helping others, she served as Head Nurse of the ER, the Director of NUrsing, and Chief Operating Officer of Mount Vernon Hospital and Director of Clinical Services of Putnam Hospital Center. She was passionate about improving patient care quality by bringing innovative tech to nursing professionals. She loved her community and being helpful to others.")
                                    }
                                    .padding()
                                    Text("Requirements to apply: To apply you must be either a high school senior, undergrad, or graduate nursing student in New York who had a 3.0 GPA or higher.")
                                    
                                        .padding()
                                    Text("Due: 06/15/2024")
                                        .padding()
                                    Link(destination: URL(string: "https://bold.org/scholarships/maureen-c-pace-memorial-nursing-scholarship/")!, label: {
                                        Text("Apply Today!")
                                    })
                                }
                            }
                        }
                        
                        
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("Equal Access I.M.S.A Scholarship")
                                    Button{
                                        libraryScholar.append("Equal Access I.M.S.A Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$12,000 ")
                                        .padding()
                                    Text("This scholarship aims to help first-gen students pursuing their academic and professional goals in STEM. ")
                                        .padding()
                                    
                                    ScrollView{
                                        Text("Requirements to apply: To apply you must be a first-gen high school senior or undergraduate student who has a GPA of 3.5 or higher, is pursuing a degree in STEM, and is a DACA recipient or undocumented student.")
                                    }
                                    
                                    .padding()
                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))
                                    Text("Due: 06/15/2024")
                                        .padding()
                                    Link(destination: URL(string: "https://bold.org/scholarships/equal-access-i-m-s-a-scholarship/")!, label: {
                                        Text("Apply Today!")
                                    })
                                }
                            }
                        }
                        
                        
                        
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("Movers &  Shakers Scholarship")
                                    Button{
                                        libraryScholar.append("Movers &  Shakers Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$1,000 (2nd place) and  $2,500(1st place)")
                                        .padding()
                                    Text("Annual Scholarship for students and researchers that want to positively impact the supply chain by maintaining great customer service while reducing costs. An 800 word essay will be required, touching on career goals and speaking on a logistics/e-commerce trend affecting the global supply chain.")
                                    
                                        .padding()
                                    
                                    ScrollView{
                                        Text("Requirements to apply:You must be in college or in graduate school, have a GPA of 3.0 or higher, have an official transcript, and letters of recommendation.")
                                    }
                                    
                                    .padding()
                                    Text("Due: 06/18/2024")
                                        .padding()
                                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))
                                    Link(destination: URL(string: "https://scholarshipowl.com/scholarship/7337-movers-shakers-scholarship")!, label: {
                                        Text("Apply Today!")
                                    })
                                }
                            }
                        }
                        
                        
                        
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("Women in Aerospace Foundation Scholarship")
                                    Button{
                                        libraryScholar.append("Women in Aerospace Foundation Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$1,000 (2nd place) and  $2,500(1st place)")
                                        .padding()
                                    ScrollView{
                                        Text("The Women in Aerospace (WIA) Foundation is offering this scholarship to increase awareness and appreciation of the aerospace field. They also seek to inspire female students pursuing this field and increase their visibility.")
                                    }
                                    .padding()
                                    
                                    ScrollView{
                                        Text("Requirements to apply: You must be a female identifying rising college junior or senior, working towards a bachelor's degree in math, science, or engineering, have completed 2.5 years of full-time college work at (and enrolled in) an accredited college, and a permanent resident or U.S. citizen.")
                                    }
                                    
                                    .padding()
                                    Text("Due: 06/18/2024")
                                    Link(destination: URL(string: "https://www.womeninaerospacefoundation.org/foundation/")!, label: {
                                        Text("Apply Today!")
                                    })
                                }
                            }
                        }
                        
                        
                        
                        
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        
                        
                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("National Ultrasound Scholarship")
                                    Button{
                                        libraryScholar.append("National Ultrasound Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$500")
                                        .padding()
                                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))
                                    ScrollView{
                                        Text("National Ultrasound is the number one dedicated ultrasound supplier in the US. They are offering this schoalarship to ease the burden of college education's cost for students. Anys student in any major can apply. ")
                                    }
                                    .padding()
                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                                    ScrollView{
                                        Text("Requirements to apply: You must mail your entry to National Ultrasound, you entry must include your transcript (unofficial is okay), a print copy of a (max 1500 word) essay over (1) how ultrasound or other medical equipment tech has changed a college course of curriculum or (2) how advances in medical equipment technology has positivel affected you, your family, or friends.")
                                    }
                                    
                                    .padding()
                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                                    Text("Due: 06/18/2024")
                                        .padding()
                                    Link(destination: URL(string: "https://www.womeninaerospacefoundation.org/foundation/")!, label: {
                                        Text("Apply Today!")
                                    })
                                }
                            }
                        }
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                        GroupBox() {
                            ScrollView{
                                HStack{
                                    Text("BigSun Scholarship")
                                    Button{
                                        libraryScholar.append("BigSun Scholarship")
//                                        libraryScholar.append("National Ultrasound Scholarship")
                                    }      label: {
                                        Text("Add to Library +")
                                    }
                                }
                                VStack{
                                    Text("$1,000 (2nd place) and  $2,500(1st place)")
                                        .padding()
                                    ScrollView {
                                        Text("The BigSun Organization is proud to be able to help young athletes succeed in their academic pursuits. In order to do our part we are offering an annual scholarship to a deserving student. All student athletes are eligible regardless of the sport they are engaged in or the capacity in which they participate. The student must be a high school senior or be attending a post secondary institute.")
                                    }
                                    .padding()
                                    
                                    ScrollView{
                                        Text("Requirements to apply: You must be a student athlete who is a senior/junior in highschool or is in college.")
                                    }
                                    
                                    .padding()
                                    Text("Due: 06/19/2024")
                                        .padding()
                                    Link(destination: URL(string: "https://bigsunathletics.com")!, label: {
                                        Text("Apply Today!")
                                    })
                                }
                            }
                        }
                        
                        .padding()
                        .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))
                        
                        GroupBox() {

                                      ScrollView{

                                        HStack{

                                          Text("The Gate Scholarship")

                                          Button{

                                            libraryScholar.append("The Gate Scholarship")

                                          }   label: {

                                            Text("Add to Library +")

                                          }

                                        }

                                          VStack{

                                            Text("$1,000")

                                              .padding()

                                            ScrollView {

                                              Text(" This scholarship is very selective and given to outstanding student leaders so they can reach their maximum potential. This scholarship will cover any cost for attendance to a college after financial aid and expected family contribution is taken into account.")

                                            }

                                            .padding()

                         

                                            ScrollView{

                                              Text("Requirements to apply: You must be a high school senior, a minority (African American, American Indian/Alaska Native, Asian and Pacific Islander American, and/or Hispanic American), Pell grant eligible, a US Citizen (national or permanent resident), minimum GPA of 3.3 on 4.0 scale, and must be enrolled full time in a four-year degree program, at an US accredited, non-profit, private or public college or university. ")

                                            }

                         

                                            .padding()

                                            Text("Due: 09/15/2024")

                                              .padding()
                                              Image("gsTime")
                                                  .resizable()
                                            Link(destination: URL(string: "www.thegatesscholarship.org/scholarship")!, label: {

                                              Text("Apply Today!")

                                            })

                                          }

                                        }

                                      }

                         

                                    .padding()

                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                         

                         

                         

                         

                         

                         

                         

                         

                        GroupBox() {

                                      ScrollView{

                                        HStack{

                                          Text("Coca - Cola Scholars")

                                          Button{

                                            libraryScholar.append("Coca - Cola Scholars")

                                          }   label: {

                                            Text("Add to Library +")

                                          }

                                        }

                                          VStack{

                                            Text("$20,000")

                                              .padding()

                                            ScrollView {

                                              Text(" Coca Cola Scholars aims to aid as many people as possible in their journey in paying for college.")

                                            }

                                            .padding()

                         

                                            ScrollView{

                                              Text("Requirements to apply: You must be a high school senior graduating from a school in the US, you must have a minimum overall B/3.0 GPA, be going to an accredited U.S. post-secondary institution for a degree, receive your high school diploma that year, and qualify for the U.S. Department of Education for Federal Financial Aid eligibility.")

                                            }

                         

                                            .padding()

                                            Text("Due: not yet announced")

                                              .padding()
                                              Image("ccSPSTime")
                                                  .resizable()

                                            Link(destination: URL(string: "https://www.coca-colascholarsfoundation.org/apply")!, label: {

                                              Text("Apply Today!")

                                            })

                                          }

                                        }

                                      }

                         

                                    .padding()

                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                         

                         

                         

                         

                         

                        GroupBox() {

                                      ScrollView{

                                        HStack{

                                          Text("The Elks National Foundation Most Valuable Student Scholarship ")

                                          Button{

                                            libraryScholar.append("The Elks National Foundation Most Valuable Student Scholarship")

                                          }   label: {

                                            Text("Add to Library +")

                                          }

                                        }

                                          VStack{

                                            Text("$1,000 - $7,500 a year")

                                              .padding()

                                            ScrollView {

                                              Text(" This program sets out to award applicants based on leadership, scholarship, and financial need. In 2025, 500 four-year scholarships will be awarded to the best applicants. Male and female students compete separately.")

                                            }

                                            .padding()

                         

                                            ScrollView{

                                              Text("Requirements to apply: You must be a high school senior graduating from a school in the US, you must be a US citizen, and male and female students compete separately.")

                                            }

                                            .padding()

                                            Text("Due: not yet announced    Opens: 08/01 ")

                                              .padding()
                                              Image("enfmvssTime")
                                                  .resizable()

                                            Link(destination: URL(string: "https://www.elks.org/scholars/scholarships/mvs.cfm")!, label: {

                                              Text("Apply Today!")

                                            })

                                          }

                                        }

                                      }

                         

                                    .padding()

                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                         

                         

                         

                         

                         

                         

                        GroupBox() {

                                      ScrollView{

                                        HStack{

                                          Text("Dell Scholars Program")

                                          Button{

                                            libraryScholar.append("Dell Scholars Program")

                                          }   label: {

                                            Text("Add to Library +")

                                          }

                                        }

                                          VStack{

                                            Text( "Up to $20,000" )

                                              .padding()

                                            ScrollView {

                                              Text(" Their program strives to aid their students personally, financially, academically, and emotionally with what they will need for college and a successful career. The program aims to award ambition and effort for those with demonstrated need.")

                                            }

                                            .padding()

                         

                                            ScrollView{

                                              Text("Requirements to apply: You must have participated in a program-approved college readiness program (check the website) in 11th and 12th grade, demonstrate financial need, be eligible for the Pell Grant, plan to enroll full time at an accredited higher education institution for a bachelor's degree, be graduating in the school year you apply.")

                                            }

                                            .padding()

                                            Text("12/10/2024")

                                              .padding()
                                              Image("dspTime")
                                                  .resizable()
                                                  

                                            Link(destination: URL(string: "https://www.dellscholars.org/students/")!, label: {

                                              Text("Apply Today!")

                                            })

                                          }

                                        }

                                      }

                         

                                    .padding()

                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                         

                         

                         

                         

                         

                         

                        GroupBox() {

                                      ScrollView{

                                        HStack{

                                          Text("Jack Kent Cooke Foundation College Scholarship")

                                          Button{

                                            libraryScholar.append("Jack Kent Cooke Foundation College Scholarship")

                                          }   label: {

                                            Text("Add to Library +")

                                          }

                                        }

                                          VStack{

                                            Text("Up to $55,000 a year")

                                              .padding()

                                            ScrollView {

                                              Text("The foundation seeks to encourage and support outstanding hard-working students with demonstrated need. This scholarship provides financial and academic support. This is a last dollar funding program and awards up to $55,000 a year for four years..")

                                            }

                                            .padding()

                         

                                            ScrollView{

                                              Text("Requirements to apply: You must be a high school senior who is a US citizen or permanent resident, have a minimum GPA of 3.5, and plan to attend an accredited U.S. college or university.")

                                            }

                                            .padding()

                                            Text("Due Date: Not yet decided, likely in November ")

                                              .padding()
                                              Image("jkcfsTime")
                                                  .resizable()

                                              Link(destination: URL(string: "https://www.jkcf.org/our-scholarships/college-scholarship-program/")!, label: {

                                              Text("Apply Today!")})

                                          }

                                        }

                                      }

                         

                                    .padding()

                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                         

                         

                         

                         

                         

                        GroupBox() {

                                      ScrollView{

                                        HStack{

                                          Text("Calvin Coolidge Presidential Foundation")

                                          Button{

                                            libraryScholar.append("Calvin Coolidge Presidential Foundation")

                                          }   label: {

                                            Text("Add to Library +")

                                          }

                                        }

                                          VStack{

                                            Text("FULL RIDE")

                                              .padding()

                                            ScrollView {

                                              Text(" This program aims to bring awareness to President Coolidge's achievements after his time in office, and support those who have demonstrated academic excellence and an appreciation for Coolidge's values: humility, service, and leadership. This is a full ride scholarship.")

                                            }

                                            .padding()

                         

                                            ScrollView{

                                              Text("Requirements to apply: You must be a high school junior.")

                                            }

                                            .padding()

                                              Image("ccSPSTime")
                                                  .resizable()
                                                  
                                            Text("Due Date: Not yet decided ")

                                              .padding()

                                            Link(destination: URL(string: "https://coolidgescholars.org/apply/")!, label: {

                                              Text("Apply Today!")

                                            })

                                          }

                                        }

                                      }

                         

                                    .padding()

                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                         

                         

                         

                         

                         

                        GroupBox() {

                                      ScrollView{

                                        HStack{

                                          Text("Bryan Cameron Education Foundation Scholarship")

                                          Button{

                                            libraryScholar.append("Bryan Cameron Education Foundation Scholarship")

                                          }   label: {

                                            Text("Add to Library +")

                                          }

                                        }

                                          VStack{

                                            Text("FULL RIDE")

                                              .padding()

                                            ScrollView {

                                              Text( "They believe that all kinds of people are necessary to make an impact, through equity and inclusion the foundation community can come together to drive the world forward and encourage others to do likewise.")

                                            }

                                            .padding()

                         

                                            ScrollView{

                                              Text("Requirements to apply: Must be in the graduating class of 2025, must maintain an unweighted GPA of 3.7/4.0 scale, must be a US citizen, and must show excellence in extracurricular activities.")

                                            }

                                            .padding()

                                            Text("09/07/2024 ")

                                              .padding()
                                                Image("bcefsTime")
                                                  .resizable()
                                            Link(destination: URL(string: "https://www.bryancameroneducationfoundation.org/scholarship#eligibility")!, label: {

                                              Text("Apply Today!")

                                            })

                                          }

                                        }

                                      }

                         

                                    .padding()

                                    .backgroundStyle(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.4))

                    }
                }
                .navigationTitle("All")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
            .frame(width: 370, height: 800)
            .background(Rectangle()
              .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius:15)
            .padding()
        }
    }
}

//#Preview {
//    All()
//}
