//
//  HomeView.swift
//  Foody
//
//  Created by Deka Primatio on 12/07/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFood: String = "" // State Empty String buat Search Food
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            HStack { // HStack User Info
                Image("UserPhoto")
                Spacer() // Widget Spacer (mengisi bagian yang kosong sampai mentok)
                
                // Alignment (End) Tulisan Howdy dan Luna Polar
                VStack(alignment: .trailing) { // VStack Username
                    Text("Howdy")
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("Gray"))
                    Text("Luna Polar")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                } // Batas VStack Username
            } // Batas HStack User Info
            
            VStack(alignment: .center) { // VStack Center Text
                Text("What Do You Want\nFor Lunch?")
                    .font(.custom("Poppins-Bold", size: 22))
                    .foregroundColor(Color("Navy"))
                    .multilineTextAlignment(.center)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 66, maxHeight: 66) // Customize Dimensi Kolom Search
            .padding(.top, 30.0) // Padding Top Center Text
            .padding(.bottom, 24.0) // Padding Bottom Center Text
            
            HStack { // Stack Kolom Search bisa pakai Stack apa saja
                TextField("Search pizza, burger, etc ...", text: $searchFood) // Text: State Empty String
                    .disableAutocorrection(true) // Disable Auto Correct
                .padding(.leading, 24.0) // Padding Tulisan didalam TextField
            }
            // Frame harus diatas Property yang lain
            // .infinity = menyesuaikan dari layout parent-nya yaitu VStack
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50) // Customize Dimensi Kolom Search
            .background(Color("SoftGray"))
            .cornerRadius(50.0)
            
            VStack(alignment: .leading, spacing: 0.0) { // VStack Categories
                Text("Categories")
                    .font(.custom("Poppins-SemiBold", size: 16))
                    .foregroundColor(Color("Navy"))
                    .padding(.bottom, 12.0)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack { // HStack Slides Wrapper
                        HStack { // HStack Button Categories: Bread
                            Image("CateBread")
                                .padding(.vertical, 5.0)
                                .padding(.leading, 5.0)
                            
                            Text("Bread")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.trailing, 18.0)
                        } // Batas HStack Button Categories
                        .background(Color("SoftGray"))
                        .cornerRadius(50.0)
                        
                        HStack { // HStack Button Categories
                            Image("CateCarrot")
                                .padding(.vertical, 5.0)
                                .padding(.leading, 5.0)
                            
                            Text("Healthy")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.trailing, 18.0)
                        } // Batas HStack Button Categories
                        .background(Color("SoftGray"))
                        .cornerRadius(50.0)
                        
                        HStack { // HStack Button Categories
                            Image("CateDonut")
                                .padding(.vertical, 5.0)
                                .padding(.leading, 5.0)
                            
                            Text("Sweets")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.trailing, 18.0)
                        } // Batas HStack Button Categories
                        .background(Color("SoftGray"))
                        .cornerRadius(50.0)
                    } // Batas HStack Slides Wrapper
                }) // Batas Horizontal ScrollView
            } // Batas VStack Categories
            .padding(.top, 30.0)
            
            // Vertical Scroll View Food Card
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 0.0) { // VStack Categories
                    Text("Most Ordered")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.bottom, 12.0)
                    
                    HStack (spacing: 0.0) { // HStack Card Wrapper
                        Image("FoodOrange")
                        
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Orange Food")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
        
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("Navy"))
                                
                        } // Batas VStack Food Info
                        .padding(.leading, 16.0)
                        
                        Spacer()
                        
                        HStack {
                            Text("4.5")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("IconStar")
                        } // Batas HStack Rating
                    } // Batas HStack Card Wrapper
                    .padding(.bottom, 18.0)
                    
                    HStack (spacing: 0.0) { // HStack Card Wrapper
                        Image("FoodGyoza")
                        
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Gyoza Sapi")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
        
                            Text("Meal")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("Navy"))
                                
                        } // Batas VStack Food Info
                        .padding(.leading, 16.0)
                        
                        Spacer()
                        
                        HStack {
                            Text("4.8")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("IconStar")
                        } // Batas HStack Rating
                    } // Batas HStack Card Wrapper
                    .padding(.bottom, 18.0)
                    
                    HStack (spacing: 0.0) { // HStack Card Wrapper
                        Image("FoodAvocado")
                        
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
        
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("Navy"))
                                
                        } // Batas VStack Food Info
                        .padding(.leading, 16.0)
                        
                        Spacer()
                        
                        HStack {
                            Text("4.3")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("IconStar")
                        } // Batas HStack Rating
                    } // Batas HStack Card Wrapper
                    .padding(.bottom, 18.0)
                } // Batas VStack Food Card
                .padding(.top, 30.0)
            }) // Batas Vertical Scroll View Food Card
            
        } // Batas VStack Parent
        .padding(.horizontal, 24.0)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
