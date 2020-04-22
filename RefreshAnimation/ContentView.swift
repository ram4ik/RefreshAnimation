//
//  ContentView.swift
//  RefreshAnimation
//
//  Created by ramil on 22.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var speed = false
    
    var body: some View {
        VStack {
            withAnimation(Animation.default.speed(0.02).repeatForever(autoreverses: false)) {
                ZStack {
                    Image(systemName: self.speed ? "arrow.clockwise" : "arrow.counterclockwise")
                        .font(.system(size: 920))
                        .rotationEffect(.init(degrees: self.speed ? 360 : 0))
                        .foregroundColor(Color.gray.opacity(0.1))
                    
                    Image(systemName: self.speed ? "arrow.counterclockwise" : "arrow.clockwise")
                        .font(.system(size: 600))
                        .rotationEffect(.init(degrees: self.speed ? 0 : 360))
                        .foregroundColor(Color.gray.opacity(0.1))
                    
                    Image(systemName: self.speed ? "arrow.clockwise" : "arrow.counterclockwise")
                        .font(.system(size: 400))
                        .rotationEffect(.init(degrees: self.speed ? 360 : 0))
                        .foregroundColor(Color.gray.opacity(0.2))
                    
                    Image(systemName: self.speed ? "arrow.counterclockwise" : "arrow.clockwise")
                        .font(.system(size: 250))
                        .rotationEffect(.init(degrees: self.speed ? 0 : 360))
                        .foregroundColor(Color.gray.opacity(0.4))
                    
                    Image(systemName: self.speed ? "arrow.clockwise" : "arrow.counterclockwise")
                        .font(.system(size: 100))
                        .rotationEffect(.init(degrees: self.speed ? 360 : 0))
                        .foregroundColor(Color.gray.opacity(0.8))
                    
                    Text("Refresh")
                        .font(.system(size: 100))
                        .bold()
                        .opacity(0.4)
                        .offset(y: self.speed ? 100 : 90)
                        .shadow(color: .black, radius: 20, x: 0, y: 20)
                    
                    
                }
            }.animation(Animation.default.speed(0.4))
                .gesture(TapGesture().onEnded({
                    self.speed.toggle()
                }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
