//
//  RoundButton.swift
//  Booking-SwiftUI
//
//  Created by Safar Safarov on 09/09/22.
//

import SwiftUI

struct RoundButton: View {
    @State var action: () -> Void = {}
    
    var gradientBorder: [Color] = [Color("cyan"),Color("cyan").opacity(0.1), Color("cyan")]

    var body: some View {
        Button {
            action()
        } label: {
            Text("Buy")
                .font(.subheadline)
                .frame(width: 70, height: 70)
                .background(.ultraThinMaterial)
                .cornerRadius(40)
                .overlay(
                    Circle()
                        .trim(from: 0, to: CGFloat(0.5))
                        .stroke(LinearGradient(colors: gradientBorder, startPoint: .top, endPoint: .bottom), style: StrokeStyle(lineWidth: 2))
                        .rotationEffect(.degrees(135))
                        .frame(width: 68, height: 68)
                )
                .padding(.horizontal, 15)
                .background(
                    Rectangle()
                        .fill(.black.opacity(0.3))
                        .frame(width: 100, height: 100)
                        .cornerRadius(40, corners: [.topLeft, .bottomLeft])
                )
        }
    }
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton()
    }
}

