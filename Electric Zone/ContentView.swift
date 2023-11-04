
import SwiftUI

struct ContentView: View {
   @State private var showsplash = true
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                VStack{
                                if showsplash {
                    
                                    SplashScreen()
                                        .transition(.opacity)
                                        .animation(.easeOut(duration: 1.5))
                    
                                } else {
                    // Style Your Dashboard here
                    
                    // Section 1
                    
                    Text("Electric Zone ⚡️")
                        .font(.system(size: 36))
                        .foregroundStyle(.black)
                        .padding(.top)
                    
                    
                    
                    HStack{
                        Image("dashbannernew")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 150)
                            .cornerRadius(10)
                    }
                    .padding(.top)
                    Spacer()
                    // Section 2
                    
                    
                    
                    HStack{
                        Spacer()
                        VStack{
                            NavigationLink(destination: Carlist()) {
                                Image("dashcar1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                            }
                            
                            
                            Text("Electric Car")
                                .foregroundStyle(.black)
                        }
                        Spacer()
                        
                        VStack{
                            NavigationLink(destination: Bikelist()) {
                                Image("dashbike1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                            }
                            Text("Electric Bike")
                                .foregroundStyle(.black)
                        }
                        
                        Spacer()
                    }
                    .padding(.bottom, 30.0)
                    
                    // Section 3
                    
                    
                    HStack{
                        Spacer()
                        VStack{
                            NavigationLink(destination: Scooterlist()) {
                                Image("dashscooter")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                            }
                            
                            Text("Electric Scooter")
                                .foregroundStyle(.black)
                        }
                        Spacer()
                        
                        VStack{
                            Image("dashcycle")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            
                            Text("Electric Cycle")
                                .foregroundStyle(.black)
                        }
                        
                        Spacer()
                    }
                    Spacer()
                }
                
                
            }
            
            
        }
        
                .onAppear {
        
                    DispatchQueue.main
                        .asyncAfter(deadline: .now() + 3)
                    {
                        withAnimation{
                            self.showsplash = false
                        }
                    }
        
        
                }
        
    }
    
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
