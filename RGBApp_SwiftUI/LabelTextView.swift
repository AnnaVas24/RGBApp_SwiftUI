//
//  LabelTextView.swift
//  RGBApp_SwiftUI
//
//  Created by Vasichko Anna on 28.02.2022.
//

import SwiftUI

struct LabelTextView: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))").foregroundColor(.white)
            .font(.system(size: 25))
    }
}

struct LabelTextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
        Color.blue
        LabelTextView(value: 100)
        }
    }
}
