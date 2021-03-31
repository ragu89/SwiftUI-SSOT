//
//  MyPaletteViewModel.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 31.03.21.
//

import Foundation
import SwiftUI

class MyPaletteViewModel : BaseViewModel {
    
    override init(title: String, redValue: Binding<Double>, greenValue: Binding<Double>, blueValue: Binding<Double>) {
        super.init(title: title, redValue: redValue, greenValue: greenValue, blueValue: blueValue)
    }
    
    convenience init(redValue: Binding<Double>, greenValue: Binding<Double>, blueValue: Binding<Double>) {
        self.init(title: "My Palette", redValue: redValue, greenValue: greenValue, blueValue: blueValue)
    }
    
}
