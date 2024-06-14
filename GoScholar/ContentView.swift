import SwiftUI

struct ContentView: View {
    @State /*private*/ var name = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.3)
                    .ignoresSafeArea()
                VStack {
               Spacer()
                    Text("GoScholar")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Image("icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    
                    Text("By scholars, for scholars.")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding()

                Spacer()
                    
                    NavigationLink(destination: LogIn()) {
                        Text("Log In")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 300, height: 50)
                            .background(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                            .cornerRadius(15)
                                            }
                    NavigationLink(destination: SignUp(name: $name)) {
                    Text("Sign Up")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 50)
                    .background(Color(red: 75/255, green: 182/255, blue: 115/255).opacity(0.9))
                    .cornerRadius(15)                        }
                    Spacer()
                    }
             
                
                    .frame(width: 360, height: 770)
                    .background(Rectangle()
                        .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius:15)
                    .padding()
                }
            }
        }
    }
    
    #Preview {
        ContentView()
    }
