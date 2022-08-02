//
//  GyozaDetailView.swift
//  Foody
//
//  Created by Deka Primatio on 13/07/22.
//

import SwiftUI

// Halaman Detail Food
struct GyozaDetailView: View {
    
    @State private var showOrderPage = false // Default Navigation Page
    
    var body: some View {
        // Basic Navigation Group (Kondisi Perpindahan Halaman)
        return Group {
            // Jika showOrderPage = true maka tampilkan Halaman OrderView
            // Jika false maka tampilkan Halaman ini (Detail Food)
            if showOrderPage {
                OrderView()
            } else {
                // Sroll View Food Detail
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    // VStack Parents (Main Layout) - Food Photo
                    VStack(spacing: 0.0) {
                        Image("GyozaPhoto")
                            .padding(.top, 30.0)
                            .padding(.bottom, 20.0)
                        
                        // HStack Food Info
                        HStack(spacing: 0.0) {
                            // VStack Food Name & Categories
                            VStack(alignment: .leading, spacing: 0.0) {
                                Text("Gyoza Sapi")
                                    .font(.custom("Poppins-Bold", size: 22))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.bottom, 6.0)
                                Text("Meal")
                                    .font(.custom("Poppins-Bold", size: 16))
                                    .foregroundColor(Color("Gray"))
                            } // VStack Food Name & Categories
                            
                            Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                            
                            // HStack Food Rating
                            HStack {
                                Text("4.8")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("Navy"))
                                Image("IconStar")
                            } // HStack Food Rating
                        } // HStack Food Info
                        .padding(.bottom, 16.0)
                        
                        // VStack Food Description & Bundle
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 20.0)
                                .lineSpacing(5.0)
                            
                            Text("Bundle")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 12.0)
                            
                            // Scroll View Bundle Photo (Horizontal)
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                // HStack Bundle Photo
                                HStack(spacing: 0.0) {
                                    Image("GyozaBundleOne")
                                        .padding(.trailing, 16.0)
                                    Image("GyozaBundleTwo")
                                        .padding(.trailing, 16.0)
                                    Image("GyozaBundleThree")
                                        .padding(.trailing, 16.0)
                                } // HStack Bundle Photo
                            }) // Scroll View Bundle Photo (Horizontal)
                        } // VStack Food Description & Bundle
                        .padding(.bottom, 32.0)
                        
                        // HStack Price Info & Button Order
                        HStack(spacing: 0.0) {
                            // VStack Price Info
                            VStack(alignment: .leading, spacing: 0.0) {
                                Text("$12.00")
                                    .font(.custom("Poppins-Bold", size: 22))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.bottom, 6.0)
                                Text("/porsi")
                                    .font(.custom("Poppins-Bold", size: 14))
                                    .foregroundColor(Color("Gray"))
                            } // VStack Price Info
                            
                            Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                            
                            Button { // Action Button
                                self.showOrderPage = true
                            } label: {
                                // Stacking Text & RoundedRectangle (ZStack)
                                ZStack {
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 190, height: 50)
                                        .foregroundColor(Color("SoftPurple"))
                                    Text("Order Now")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("White"))
                                } // ZStack Label Button (RoundedRectangle & Text)
                            } // Button Label
                        } // HStack Price Info & Button Order
                    } // VStack Parents (Main Layout) - Food Photo
                    .padding(.horizontal, 24.0)
                    
                }) // Scroll View Food Detail (Vertical)
            } // Kondisi Else
        } // Return Group
    } // Body
} // Struct

struct GyozaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GyozaDetailView()
    }
}
