//
//  EasyToApply.swift
//  GoScholar
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI

struct EasyToApply: View {
    var body: some View {
      NavigationStack {
          ZStack {
              Color.green.opacity(0.3)
                  .ignoresSafeArea()
              ScrollView {
//                    ZStack{
//                        Rectangle()
                      VStack{
                          Text("Easy to Apply")
                              .font(.title)
                              .fontWeight(.semibold)
                              .multilineTextAlignment(.leading)
                              .background(Rectangle()
                                  .foregroundColor(.green.opacity(0.3))
                                  .frame(width: 200.0, height: 60.0)
                                  .cornerRadius(20))
                              .padding(.vertical, 35.0)
                          
                                                  Spacer()
                          
                          Text("Bold.org - 'Be Bold' No-Essay Scholarship ")
                          Link(destination: URL(string: "https://bold.org/scholarships/the-be-bold-no-essay-scholarship/#ref=exclusive-scholarships")!, label: {
                              Text("Be Bold")
                          })

                              .font(.headline)
//                                .background(Rectangle()
//                                    .frame(width: 280.0, height: 200.0)
//                                    .background(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
//                                    .cornerRadius(20))
                          
//                            Spacer()
                          Spacer()

                          Text("Scholarship360 $1000 Scholarships")
                              .fontWeight(.semibold)
                              .padding()
                          Link(destination: URL(string: "https://bold.org/scholarships/minority-women-in-stem-financial-need-scholarship/")!, label: {
                              Text("Scholarship360")
                                  .fontWeight(.semibold)
                          })
                              .font(.headline)
//                                .background(Rectangle()
//                                    .frame(width: 280.0, height: 200.0)
//                                    .background(Color(red: 75/255, green: 182/255, blue: 38/255).opacity(0.9))
//                                    .cornerRadius(20))
                          Spacer()

                          Text("Collegevine $2,000 No-Essay Scholarship")
                              .fontWeight(.semibold)
                              .padding()
                              .font(.headline)
                          Link(destination: URL(string: "https://www.collegevine.com/scholarships?utm_source=scholarships360.org&utm_medium=scholarships360&utm_campaign=scholarships360_site")!, label: {
                              Text("Collegevine")
                                  .fontWeight(.semibold)
                          })

                          Spacer()
                          Spacer()

                          
                      }
                      .frame(width: 360, height: 750)
                      .background(Rectangle()
                          .foregroundColor(.white))
                      .cornerRadius(15)
                      .shadow(radius:10)
                      .padding()
                  }
//end of green ZS
              }
//scrollview
          }
    }
}

#Preview {
    EasyToApply()
}
