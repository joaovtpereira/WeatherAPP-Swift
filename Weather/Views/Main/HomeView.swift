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
            VStack(spacing: -10) {
                Text("Uberlândia")
                    .font(.largeTitle)
                
                VStack {
                    Text(attributedString)                    
                }
                
                Spacer()
            }
            .padding(.top, 51)
        }
    }
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Tempo Limpo")
        
        if let temp = string.range(of: "19°") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        if let weather = string.range(of: "Tempo Limpo") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
