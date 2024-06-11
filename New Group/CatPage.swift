//
//  Categories.swift
//  GoScholar
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct CatPage: View {
    var body: some View {
        NavigationStack {
            VStack{
                Text("GoScholar")
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    .position(x:318,y:-26)
             
                Menu(/*@START_MENU_TOKEN@*/"Menu"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
                }
                Image("icon")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50.0, height: 50.0)
                    .position(x:200,y:0)
                
                Text("Categories")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 0.0)
        
                VStack{
                    ZStack{
                        Text("New!")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                    
                    NavigationLink(destination: easyToApply()) {
                        Text("Easy to Apply")
                    
                    ZStack{
                        Text("Popular")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                    
                    ZStack{
                        Text("Easy to apply")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                    
                    ZStack{
                        Text("Big Bank")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                    
                    ZStack{
                        Text("Minorities")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                    
                    ZStack{
                        Text("Age(s)")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                    
                    ZStack{
                        Text("Random")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                    
                    ZStack{
                        Text("Full Ride")
                            .font(.title)
                            .background(Rectangle()
                                .foregroundColor(.green.opacity(0.3))
                                .frame(width: 360.0, height: 60.0)
                                .cornerRadius(20))
                            .padding()
                        
                    }
                }
                    .toolbar{
                        ToolbarItemGroup(placement:.status) {
                            NavigationLink(destination: All()) {
                                Text("All")}
                            NavigationLink(destination: catPage()) {
                                Text("Categories")}
                            NavigationLink(destination: Filter()) {
                                Text("Filter")}
                            NavigationLink(destination: Quiz()) {
                                Text("Quiz")}
                        }
                    }
            }
            
            .navigationTitle("home")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(true)
        }
        Text("By scholars for scholars")
    }
}

#Preview {
    CatPage()
}
