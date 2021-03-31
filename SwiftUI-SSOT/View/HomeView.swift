//
//  HomeView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            
            MyPaletteView(
                viewModel: MyPaletteViewModel(
                    redValue: $viewModel.redValue,
                    greenValue: $viewModel.greenValue,
                    blueValue: $viewModel.blueValue
                )
            )
            
            MySliderView(
                viewModel: MySliderViewModel(
                    redValue: $viewModel.redValue,
                    greenValue: $viewModel.greenValue,
                    blueValue: $viewModel.blueValue
                )
            )
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(
            viewModel: HomeViewModel()
        )
    }
}
