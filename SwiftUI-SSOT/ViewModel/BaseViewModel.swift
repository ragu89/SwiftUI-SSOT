//
//  BaseViewModel.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 31.03.21.
//

import Foundation
import SwiftUI

class BaseViewModel : ObservableObject {
    
    @Published var title = ""
    
    init(title: String) {
        self.title = title
    }
}
