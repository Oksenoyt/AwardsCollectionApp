//
//  HeartView.swift
//  AwardsCollectionApp
//
//  Created by Elenka on 27.09.2022.
//

import SwiftUI

struct HeartView: View {
    @State private var animationAmount: CGFloat = 0.8
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            ZStack {
                ZStack {
                    Rectangle()
                    Circle().offset(x: size/2)
                    Circle().offset(y: size/2)
                }.opacity(0.2)
                ZStack {
                    Rectangle()
                    Circle().offset(x: size/2)
                    Circle().offset(y: size/2)
                }.scaleEffect(0.7)
                    .opacity(0.5)
                ZStack {
                    Rectangle()
                    Circle().offset(x:size/2)
                    Circle().offset(y:size/2)
                }.scaleEffect(0.5)
                    .opacity(0.6)
            }
            .rotationEffect(.degrees(-135))
            .foregroundColor(.red)
            .scaleEffect(0.49)
            .offset(y: size / 20 )
            .scaleEffect(animationAmount)
            .animation(
                .linear(duration: 0.1)
                .delay(0.2)
                .repeatForever(autoreverses: true),
                value: animationAmount)
            .onAppear {
                animationAmount = 1.2
            }
            
        }
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView()
            .frame(width: 200, height: 200)
    }
}
