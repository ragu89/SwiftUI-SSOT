//
//  MyPaletteView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct MyPaletteView: View {
    
    @ObservedObject var viewModel: MyPaletteViewModel
    
    init(viewModel: MyPaletteViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("\(viewModel.title)")
                .font(.caption)
                .padding()
            
            Circle()
                .fill(
                    Color(
                        red: viewModel.redValue,
                        green: viewModel.greenValue,
                        blue: viewModel.blueValue
                    )
                )
                .frame(width: 200, height: 200)
            
        }
    }
}

struct MyPaletteView_Previews: PreviewProvider {
    static var previews: some View {
        MyPaletteView(
            viewModel: MyPaletteViewModel(
                redValue: .constant(0.0),
                greenValue: .constant(0.0),
                blueValue: .constant(0.0)
            )
        )
    }
}
