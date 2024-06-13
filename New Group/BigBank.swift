//
//  BigBank.swift
//  GoScholar
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI

struct BigBank: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.3)
                    .ignoresSafeArea()
                ScrollView {
//                    ZStack{
//                        Rectangle()
                        VStack{
                            Text("Big Bank")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .background(Rectangle()
                                    .foregroundColor(.green.opacity(0.3))
                                    .frame(width: 200.0, height: 60.0)
                                    .cornerRadius(20))
                                .padding(.vertical, 35.0)
                            
                            //                        Spacer()
                            
                            Text("placeholder")
                                .font(.headline)
                                .background(Rectangle()
                                    .foregroundColor(.gray.opacity(0.3))
                                    .frame(width: 280.0, height: 200.0)
                                    .cornerRadius(20))
                                .padding(.top, 100.0)
                            
                            Spacer()
                            
                            Text("placeholder")
                                .font(.headline)
                                .background(Rectangle()
                                    .foregroundColor(.gray.opacity(0.3))
                                    .frame(width: 280.0, height: 200.0)
                                    .cornerRadius(20))
                            
                            Spacer()
                            
                            Text("placeholder")
                                .font(.headline)
                                .background(Rectangle()
                                    .foregroundColor(.gray.opacity(0.3))
                                    .frame(width: 280.0, height: 200.0)
                                    .cornerRadius(20))
                                .padding()
                            
                        }
                        .frame(width: 360, height: 1000)
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
//end of white ZS
        }
    }
//}
#Preview {
    BigBank()
}
