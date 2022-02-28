//
//  ColorView.swift
//  RGBApp_SwiftUI
//
//  Created by Vasichko Anna on 17.02.2022.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .ignoresSafeArea()
            .frame(width: 350, height: 200)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
            .preferredColorScheme(.dark)
    }
}

