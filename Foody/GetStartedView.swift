//
//  GetStartedView.swift
//  Foody
//
//  Created by Deka Primatio on 09/07/22.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        // Gambar Illustrasi (VStack)
        VStack(spacing: 0.0) {
            Image("OnboardingIllustration")
                .padding(.bottom, 50)
            
            // Text dan Button (HStack)
            HStack {
                // Wrap VStack didalam HStack agar bisa diatur Alignment-nya
                VStack(alignment: .leading, spacing: 0.0) {

                    Text("180K Store")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("Gray"))
                    Text("Order You \nFavorite Foods")
                        .font(.custom("Poppins-Bold", size: 36))
                        .foregroundColor(Color("Navy"))

                    Button {
                        print("Deka Primatio") // Action
                    } label: {
                        // Stacking Text & RoundedRectangle (ZStack)
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 327, height: 50)
                                .foregroundColor(Color("Orange"))
                            Text("Explore Now")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("White"))
                        } // Batas ZStack Label
                    } // Batas Button
                    .padding(.top, 30)
                } // Batas VStack didalam HStack
            } // Batas HStack
        } // Batas VStack (Main Layout)
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
