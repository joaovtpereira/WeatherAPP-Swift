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
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
