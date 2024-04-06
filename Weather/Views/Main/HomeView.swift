//
//  HomeView.swift
//  Weather
//
//  Created by João Vitor Pereira on 06/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            // MARK: Background Color
            Color.background
                .ignoresSafeArea()
            
            // MARK: Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: HOUSE IMAGE
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            // MARK: Content informations weather
            VStack {
                Text("Uberlândia")
                    .font(.largeTitle)
                
                VStack {
                    Text("19°" + "\n" + "Tempo Limpo")
                    Text("H:24°   L:18°")
                        .font(.title3.weight(.semibold))
                }
                
                Spacer()
            }
            .padding(.top, 51)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
