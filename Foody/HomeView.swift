//
//  HomeView.swift
//  Foody
//
//  Created by Deka Primatio on 12/07/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Image("UserPhoto")
                Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                VStack(alignment: .trailing) {
                    Text("Howdy")
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("Gray"))
                    Text("Luna Polar")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                } // Batas VStack
            } // Batas HStack
            .padding(.horizontal, 24.0)
            Text("What Do You Want\nFor Lunch?")
                .font(.custom("Poppins-Bold", size: 22))
                .foregroundColor(Color("Navy"))
                .multilineTextAlignment(.center)
                .padding(.top, 30.0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
