//
//  MySliderView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct MySliderView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Red")
                
                Slider(
                    value: $redValue,
                    in: 0...1
                )
            }.padding()
            
            HStack {
                Text("Green")
                
                Slider(
                    value: $greenValue,
                    in: 0...1
                )
            }.padding()
            
            HStack {
                Text("Blue")
                
                Slider(
                    value: $blueValue,
                    in: 0...1
                )
            }.padding()
            
        }.padding()
    }
}

struct MySliderView_Previews: PreviewProvider {
    static var previews: some View {
        MySliderView(
            redValue: .constant(0.0),
            greenValue: .constant(0.0),
            blueValue: .constant(0.0)
        )
    }
}
