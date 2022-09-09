//
//  BookingView.swift
//  Booking-SwiftUI
//
//  Created by Safar Safarov on 10/09/22.
//

import SwiftUI

struct BookingView: View {
    
    @State var gradient = [Color("backgroundColor2").opacity(0), Color("backgroundColor2"), Color("backgroundColor2"), Color("backgroundColor2")]
    
    var body: some View {
        ZStack {
            Image("booking")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity, alignment: .top)
            
            VStack {
                LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom)
                    .frame(height: 600)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            
            VStack(spacing: 0.0) {
                HStack {
                    CircleButton(action: {}, image: "arrow.left")
                    
                    Spacer()
                    
                    CircleButton(action: {}, image: "ellipses")
                }
                .padding(EdgeInsets(top: 46, leading: 20, bottom: 0, trailing: 20))
                
                Text("Doctor Strange")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 200)
                
                Text("In The Multiverse of Madness")
                    .font(.title3)
                    .foregroundColor(.white)
                
                Text("Dr. Stephen Strange cases a forbidden spell that opens the doorway to the multiverse, including alternate version of...")
            }
            .frame(maxWidth: .infinity, alignment: .top)
        }
        .background(Color("backgroundColor2"))
        .ignoresSafeArea()
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
