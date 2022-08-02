//
//  HomeView.swift
//  Foody
//
//  Created by Deka Primatio on 12/07/22.
//

import SwiftUI

// Halaman Home / Beranda
struct HomeView: View {
    
    @State private var searchFood: String = "" // State Empty String buat Search Food
    @State private var showGyozaDetailPage = false // Default Navigation Page
    @State private var showOrangeDetailPage = false // Default Navigation Page
    @State private var showAvocadoDetailPage = false // Default Navigation Page
    
    var body: some View {
        // Basic Navigation Group (Kondisi Perpindahan Halaman)
        return Group {
            // Jika showDetailPage = true maka tampilkan Halaman GyozaDetailView
            // Jika false maka tampilkan Halaman ini (Home / Beranda)
            if showGyozaDetailPage {
                GyozaDetailView()
            } else if showOrangeDetailPage{
                OrangeDetailView()
            }else if showOrangeDetailPage{
                AvocadoDetailView()
            } else {
                // VStack Parents (Main Layout)
                VStack(alignment: .leading, spacing: 0.0) {
                    // HStack User Photo & Info
                    HStack {
                        Image("UserPhoto") // User Photo
                        
                        Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                        
                        // VStack User Info
                        VStack(alignment: .trailing) {
                            Text("Howdy")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("DarkGray"))
                            Text("Luna Polar")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                        } // VStack User Info
                    } // HStack User Info
                    
                    // VStack Center Text
                    VStack(alignment: .center) {
                        Text("What Do You Want\nFor Lunch?")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("Navy"))
                            .multilineTextAlignment(.center)
                    } // VStack Center Text
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 66, maxHeight: 66) // Customize Dimensi Kolom Search
                    .padding(.top, 30.0) // Padding Top Center Text
                    .padding(.bottom, 24.0) // Padding Bottom Center Text
                    
                    // HStack Kolom Search
                    HStack {
                        TextField("Search pizza, burger, etc ...", text: $searchFood) // Text: State Empty String
                            .disableAutocorrection(true) // Disable Auto Correct
                        .padding(.leading, 24.0) // Padding Tulisan didalam TextField
                    } // HStack Kolom Search
                    // Frame harus diatas Property yang lain
                    // .infinity = menyesuaikan dari layout parent-nya yaitu VStack
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50) // Customize Dimensi Kolom Search
                    .background(Color("SoftGray"))
                    .cornerRadius(50.0)
                    
                    // VStack Categories & List of Categories
                    VStack(alignment: .leading, spacing: 0.0) {
                        Text("Categories")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 12.0)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            // HStack Slides Wrapper
                            HStack {
                                // HStack Button Categories: Bread
                                HStack {
                                    Image("CateBread")
                                        .padding(.vertical, 5.0)
                                        .padding(.leading, 5.0)
                                    
                                    Text("Bread")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                        .padding(.trailing, 18.0)
                                } // HStack Button Categories: Bread
                                .background(Color("SoftGray"))
                                .cornerRadius(50.0)
                                
                                // HStack Button Categories: Carrot
                                HStack {
                                    Image("CateCarrot")
                                        .padding(.vertical, 5.0)
                                        .padding(.leading, 5.0)
                                    
                                    Text("Healthy")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                        .padding(.trailing, 18.0)
                                } // HStack Button Categories: Carrot
                                .background(Color("SoftGray"))
                                .cornerRadius(50.0)
                                
                                // HStack Button Categories: Sweets
                                HStack {
                                    Image("CateDonut")
                                        .padding(.vertical, 5.0)
                                        .padding(.leading, 5.0)
                                    
                                    Text("Sweets")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                        .padding(.trailing, 18.0)
                                } // HStack Button Categories: Sweets
                                .background(Color("SoftGray"))
                                .cornerRadius(50.0)
                            } // HStack Slides Wrapper
                        }) // Scroll View List of Categories (Horizontal)
                    } // VStack Categories & List of Categories
                    .padding(.top, 30.0)
                    
                    // Vertical Scroll View Food Card
                    ScrollView(.vertical, showsIndicators: false, content: {
                        // VStack Most Ordered Food
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Most Ordered")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 12.0)
                            
                            // HStack Food Card: Orange Drink
                            HStack (spacing: 0.0) {
                                Image("FoodOrange")
                                
                                // VStack Food Info: Orange Drink
                                VStack (alignment: .leading, spacing: 0.0) {
                                    Text("Orange Drink")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Navy"))
                                        
                                } // VStack Food Info: Orange Drink
                                .padding(.leading, 16.0)
                                
                                Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                                
                                // HStack Food Rating: Orange Drink
                                HStack {
                                    Text("4.5")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("IconStar")
                                } // HStack Food Rating: Orange Drink
                            }
                            .onTapGesture {
                                self.showOrangeDetailPage = true
                            }// OnTapGesture: Perpindahan Halaman
                            
                            // HStack Food Card: Orange Drink
                            .padding(.bottom, 18.0)
                            
                            // HStack Food Card: Gyoza Sapi
                            HStack (spacing: 0.0) {
                                Image("FoodGyoza")
                                
                                // VStack Food Info: Gyoza Sapi
                                VStack (alignment: .leading, spacing: 0.0) {
                                    Text("Gyoza Sapi")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                
                                    Text("Meal")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Navy"))
                                        
                                } // VStack Food Info: Gyoza Sapi
                                .padding(.leading, 16.0)
                                
                                Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                                
                                // HStack Food Rating: Gyoza Sapi
                                HStack {
                                    Text("4.8")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("IconStar")
                                } // HStack Food Rating: Gyoza Sapi
                            } // HStack Food Card: Gyoza Sapi
                            .onTapGesture {
                                self.showGyozaDetailPage = true
                            }// OnTapGesture: Perpindahan Halaman
                            .padding(.bottom, 18.0)
                            
                            // HStack Food Card: Avocado Salad
                            HStack (spacing: 0.0) {
                                Image("FoodAvocado")
                                
                                // VStack Food Info: Avocado Salad
                                VStack (alignment: .leading, spacing: 0.0) {
                                    Text("Avocado Salad")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Navy"))
                                        
                                } // VStack Food Info: Avocado Salad
                                .padding(.leading, 16.0)
                                
                                Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                                
                                // HStack Food Rating: Avocado Salad
                                HStack {
                                    Text("4.3")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("IconStar")
                                } // HStack Food Rating: Avocado Salad
                            } // HStack Food Card: Avocado Salad
                            .onTapGesture {
                                self.showAvocadoDetailPage = true
                            }// OnTapGesture: Perpindahan Halaman
                            
                            .padding(.bottom, 18.0)
                            
                        } // VStack Most Ordered
                        .padding(.top, 30.0)
                        
                    }) // Scroll View (Vertical) Food Card
                } // VStack Parents (Main Layout)
                .padding(.horizontal, 24.0)
                
            } // Kondisi Else
        } // Return Group
    } // Body
} // Struct

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
