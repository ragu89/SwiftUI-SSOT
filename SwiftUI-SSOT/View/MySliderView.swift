//
//  MySliderView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct MySliderView: View {
    
    @ObservedObject var viewModel: MySliderViewModel
    @ObservedObject var colorSettings: ColorSettings
    
    init(
        viewModel: MySliderViewModel,
        colorSettings: ObservedObject<ColorSettings>
    ) {
        self.viewModel = viewModel
        self._colorSettings = colorSettings
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(viewModel.title)")
                .font(.caption)
                .padding()
            
            HStack {
                Text("Red")
                
                Slider(
                    value: $colorSettings.redValue,
                    in: 0...1
                )
            }.padding()
            
            HStack {
                Text("Green")
                
                Slider(
                    value: $colorSettings.greenValue,
                    in: 0...1
                )
            }.padding()
            
            HStack {
                Text("Blue")
                
                Slider(
                    value: $colorSettings.blueValue,
                    in: 0...1
                )
            }.padding()
            
        }.padding()
    }
}

struct MySliderView_Previews: PreviewProvider {
    static var previews: some View {
        MySliderView(
            viewModel: MySliderViewModel(),
            colorSettings: ObservedObject.init(wrappedValue: ColorSettings())
        )
    }
}
