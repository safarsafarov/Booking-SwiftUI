//
//  TicketView.swift
//  Booking-SwiftUI
//
//  Created by Safar Safarov on 09/09/22.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack {
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: 100)
                .offset(x: -130, y: -100)
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: 100)
                .offset(x: -130, y: -100)
            
            VStack(spacing: 30.0) {
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("Once you buy a movie ticket simply scan the barcode to access to your movie.")
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
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
