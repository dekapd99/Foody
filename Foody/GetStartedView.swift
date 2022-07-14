//
//  GetStartedView.swift
//  Foody
//
//  Created by Deka Primatio on 09/07/22.
//

import SwiftUI

// Halaman Get Started
struct GetStartedView: View {
    
    @State private var showHomePage = false // Default Navigation Page
    
    var body: some View {
        // Basic Navigation Group (Kondisi Perpindahan Halaman)
        return Group {
            // Jika showHomePage = true maka tampilkan Halaman HomeView
            // Jika false maka tampilkan Halaman ini (Get Started)
            if showHomePage {
                HomeView()
            } else {
                // VStack Parents (Main Layout) - Illustrasi
                VStack(spacing: 0.0) {
                    Image("OnboardingIllustration")
                        .padding(.bottom, 50)
                    
                    // VStack Text & Button
                    VStack(alignment: .leading, spacing: 0.0) {
                        // Text Kecil dan Besar
                        Text("180K Store")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("DarkGray"))
                        Text("Order You \nFavorite Foods")
                            .font(.custom("Poppins-Bold", size: 36))
                            .foregroundColor(Color("Navy"))

                        Button { // Action Button
                            self.showHomePage = true
                        } label: {
                            // Stacking Text & RoundedRectangle (ZStack)
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 327, height: 50)
                                    .foregroundColor(Color("SoftPurple"))
                                Text("Explore Now")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("White"))
                            } // ZStack Label Button (RoundedRectangle & Text)
                        } // Label Button
                        .padding(.top, 30)
                        
                    } // VStack Text & Button
                } // VStack Parents (Main Layout) - Illustrasi
            } // Kondisi Else
        } // Return Group
    } // Body
} // Struct

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
