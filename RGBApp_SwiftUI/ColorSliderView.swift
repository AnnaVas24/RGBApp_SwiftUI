//
//  SwiftUIView.swift
//  RGBApp_SwiftUI
//
//  Created by Vasichko Anna on 28.02.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    @State private var textValue = ""
    let color: Color
    
    var body: some View {
        HStack {
            LabelTextView(value: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
            ColorValueTFView(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.blue
            ColorSliderView(sliderValue: .constant(100), color: .yellow)
        }
    }
}


