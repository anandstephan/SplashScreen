//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Anand Stephan on 07/03/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive:Bool = false
    @State private var size=0.7
    @State private var opacity = 0.4
    
    var body: some View {
 
        if isActive{
            ContentView()
        }else{
            VStack{
                Image("mascot")
                Text("Learn Code Online")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.black)
                    .opacity(0.7)
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeInOut(duration: 1.0)){
                            self.size=1.1
                            self.opacity=1.0
                        }
                    }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+1.5){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }

        }
        
    }
}

#Preview {
    SplashScreenView()
}
