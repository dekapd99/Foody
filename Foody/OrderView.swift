//
//  OrderView.swift
//  Foody
//
//  Created by Deka Primatio on 14/07/22.
//

import SwiftUI

// Halaman Order
struct OrderView: View {
    var body: some View {
        // VStack Parents (Main Layout)
        VStack(alignment: .center, spacing: 0.0) {
            // Text Kecil dan Besar
            Text("Order Your\nFavorite Foods")
                .font(.custom("Poppins-Bold", size: 26))
                .foregroundColor(Color("Navy"))
                .padding(.bottom, 10.0)
            
            Text("Sign up to get your foods faster\nand better than before")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("DarkGray"))
                .padding(.horizontal, 63.0)
            
            Image("OrderIllustration")
                .padding(.vertical, 50)
            
            Button { // Action Button
                print("Register")
            } label: {
                // Stacking Text & RoundedRectangle (ZStack)
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 327, height: 50)
                        .foregroundColor(Color("SoftPurple"))
                    Text("Create New Account")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("White"))
                } // ZStack Label Button (RoundedRectangle & Text)
            } // Label Button
            .padding(.bottom, 10)
            
            Button { // Action Button
                print("Sign In")
            } label: {
                // Stacking Text & RoundedRectangle (ZStack)
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color("SoftPurple"), lineWidth: 3)
                        .frame(width: 327, height: 50)
                        .foregroundColor(Color("White"))
                        
                    Text("Sign In")
                        .font(.custom("Poppins-Medium", size: 16))
                        .foregroundColor(Color("Navy"))
                } // ZStack Label Button (RoundedRectangle & Text)
            } // Label Button
            .padding(.bottom, 30)
            
            Text("Terms & Conditions")
                .underline()
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("DarkGray"))
        } // VStack Parents (Main Layout)
        .lineSpacing(5)
        .multilineTextAlignment(.center)
    } // Body
} // Struct

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
