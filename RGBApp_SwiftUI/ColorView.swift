//
//  ColorView.swift
//  RGBApp_SwiftUI
//
//  Created by Vasichko Anna on 17.02.2022.
//

import SwiftUI

struct ColorView: View {
    let color: UIColor
    var body: some View {
        Color.init(color)
            .ignoresSafeArea()
            .frame(width: 350, height: 200)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .systemOrange)
            .preferredColorScheme(.dark)
    }
}

