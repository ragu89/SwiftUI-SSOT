//
//  MyPaletteView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct MyPaletteView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        
        Circle()
            .fill(
                Color(
                    red: redValue,
                    green: greenValue,
                    blue: blueValue
                )
            )
            .frame(width: 200, height: 200)
        
    }
}

struct MyPaletteView_Previews: PreviewProvider {
    static var previews: some View {
        MyPaletteView(
            redValue: .constant(0.0),
            greenValue: .constant(0.0),
            blueValue: .constant(0.0)
        )
    }
}
