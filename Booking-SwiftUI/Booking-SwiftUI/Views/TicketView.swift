//
//  TicketView.swift
//  Booking-SwiftUI
//
//  Created by Safar Safarov on 09/09/22.
//

import SwiftUI

struct TicketView: View {
    
    @State var animate = false
    
    var body: some View {
        ZStack {
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

            VStack(spacing: 30.0) {
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("Once you buy a movie ticket simply scan the barcode to access to your movie.")
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            Tickets()
                .padding(.top, 30)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}


struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
