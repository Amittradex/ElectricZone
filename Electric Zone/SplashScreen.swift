//
//  SplashScreen.swift
//  Electric Zone
//
//  Created by Amit Patel on 18/10/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            
            
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            Image("splashlogo2")
                .resizable()
                .scaledToFit()
                
                .padding()
            
            
            
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
