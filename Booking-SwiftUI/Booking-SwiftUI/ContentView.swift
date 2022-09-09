//
//  ContentView.swift
//  Booking-SwiftUI
//
//  Created by Safar Safarov on 09/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Tab = .home
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 0.0) {
                TabView(selection: $currentTab) {
                    HomeView()
                        .tag(Tab.home)
                    Text("Location")
                        .tag(Tab.location)
                    Text("Ticket")
                        .tag(Tab.ticket)
                    Text("Category")
                        .tag(Tab.category)
                    Text("Profile")
                        .tag(Tab.profile)
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .ignoresSafeArea(.keyboard)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
