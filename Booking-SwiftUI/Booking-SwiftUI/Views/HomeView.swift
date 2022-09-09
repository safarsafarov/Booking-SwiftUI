//
//  HomeView.swift
//  Booking-SwiftUI
//
//  Created by Safar Safarov on 10/09/22.
//

import SwiftUI

struct HomeView: View {
    @State var animate = false
    
    @State var posters1: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
    @State var posters2: [String] = ["poster7", "poster8", "poster9", "poster10", "poster11", "poster12"]
    @State var posters3: [String] = ["poster13", "poster14", "poster15", "poster16", "poster17", "poster18"]
    
    var body: some View {
        CircleBackground(color: Color("greenCircle"))
            .blur(radius: animate ? 30 : 100)
            .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
            .task {
                withAnimation(.easeInOut(duration: 7).repeatForever()) {
                    animate.toggle()
                }
            }
        
        CircleBackground(color: Color("pinkCircle"))
            .blur(radius: animate ? 30 : 100)
            .offset(x: animate ? 100 : -130, y: animate ? 150 : -100)

        ZStack {
            VStack(spacing: 0.0) {
                Text("Choose Movie")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
                
                CustomSearchBar()
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ScrollSection(title: "Now Playing", posters: posters1)
                        ScrollSection(title: "Coming Soon", posters: posters2)
                        ScrollSection(title: "Top Movies", posters: posters3)
                        ScrollSection(title: "Favorite", posters: posters1)
                    }
                    .padding(.bottom, 90)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(colors: [Color("backgroundColor"), Color("backgroundColor2")], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
