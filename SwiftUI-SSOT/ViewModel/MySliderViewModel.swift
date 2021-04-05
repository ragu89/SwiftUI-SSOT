//
//  MySliderViewModel.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 31.03.21.
//

import Foundation

class MySliderViewModel: ObservableObject {
    
    @Published var title: String
    
    init() {
        self.title = "My slider"
    }
    
}
