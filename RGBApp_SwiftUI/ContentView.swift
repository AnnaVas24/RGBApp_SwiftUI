//
//  ContentView.swift
//  RGBApp_SwiftUI
//
//  Created by Vasichko Anna on 17.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    
    
    var body: some View {
        ZStack{
            Color.blue.opacity(0.5)
            .ignoresSafeArea()
        VStack{
            ColorView(color: UIColor(
                red: CGFloat(redValue/255),
                green: CGFloat(greenValue/255),
                blue: CGFloat(blueValue/255),
                alpha: 1))
                .padding(.bottom, 20)
            ColorSliderView(value: $redValue, color: .red)
                .padding()
            ColorSliderView(value: $greenValue, color: .green)
                .padding()
            ColorSliderView(value: $blueValue, color: .blue)
                .padding()
    
        }
        
    }
    }
   
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ColorSliderView: View {
    @Binding var value: Double
    @State private var alertPresented = false
    let color: Color

    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(.white)
                .font(.system(size: 25))
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            TextField("", value: $value, format: .number)
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 25))
                .frame(width: 70, height: 50)
               
                
        }
        .padding(.horizontal)
    }
    
    
}

