//
//  BaseViewModel.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 31.03.21.
//

import Foundation
import SwiftUI

class BaseViewModel : ObservableObject {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    @Published var title = ""
    
    init(title: String, redValue: Binding<Double>, greenValue: Binding<Double>, blueValue: Binding<Double>) {
        self._redValue = redValue
        self._greenValue = greenValue
        self._blueValue = blueValue
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            self.title = title
        }
    }
}
