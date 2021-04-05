//
//  HomeView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var viewModel: HomeViewModel
    @StateObject private var colorSettings = ColorSettings()
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            
            MyPaletteView(
                viewModel: MyPaletteViewModel(),
                colorSettings: .init(wrappedValue: colorSettings)
            )
            
            MySliderView(
                viewModel: MySliderViewModel(),
                colorSettings: .init(wrappedValue: colorSettings)
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
