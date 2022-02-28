//
//  ColorValueTFView.swift
//  RGBApp_SwiftUI
//
//  Created by Vasichko Anna on 28.02.2022.
//

import SwiftUI

struct ColorValueTFView: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            withAnimation {
                checkValue()
            }
        }
        .frame(width: 70, height: 50, alignment: .trailing)
        .textFieldStyle(.roundedBorder)
        .font(.system(size: 25))
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
}

extension ColorValueTFView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

struct ColorValueTFView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.blue
            ColorValueTFView(textValue: .constant("108"), value: .constant(108))
        }
    }
}
