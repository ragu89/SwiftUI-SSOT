//
//  MyPaletteView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct MyPaletteView: View {
    
    @ObservedObject var viewModel: MyPaletteViewModel
    @ObservedObject var colorSettings: ColorSettings
    
    init(
        viewModel: MyPaletteViewModel,
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
            
            Circle()
                .fill(
                    Color(
                        red: colorSettings.redValue,
                        green: colorSettings.greenValue,
                        blue: colorSettings.blueValue
                    )
                )
                .frame(width: 200, height: 200)
            
        }
    }
}

struct MyPaletteView_Previews: PreviewProvider {
    static var previews: some View {
        MyPaletteView(
            viewModel: MyPaletteViewModel(),
            colorSettings: ObservedObject.init(wrappedValue: ColorSettings())
        )
    }
}
