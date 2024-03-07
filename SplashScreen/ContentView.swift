//
//  ContentView.swift
//  SplashScreen
//
//  Created by Anand Stephan on 07/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("Home Screen of LCO App")
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
