//
//  HomeView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct HomeView: View {
    
    @State var redValue = 0.0
    @State var greenValue = 0.0
    @State var blueValue = 0.0
    
    var body: some View {
        VStack {
            
            MyPaletteView(
                redValue: $redValue,
                greenValue: $greenValue,
                blueValue: $blueValue
            )
            
            MySliderView(
                redValue: $redValue,
                greenValue: $greenValue,
                blueValue: $blueValue
            )
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
