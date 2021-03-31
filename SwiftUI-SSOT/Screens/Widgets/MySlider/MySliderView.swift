//
//  MySliderView.swift
//  SwiftUI-SSOT
//
//  Created by Guye Raphael, I233 on 30.03.21.
//

import SwiftUI

struct MySliderView: View {
    
    @ObservedObject var viewModel: MySliderViewModel
    
    init(viewModel: MySliderViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(viewModel.title)")
                .font(.caption)
                .padding()
            
            HStack {
                Text("Red")
                
                Slider(
                    value: viewModel.$redValue,
                    in: 0...1
                )
            }.padding()
            
            HStack {
                Text("Green")
                
                Slider(
                    value: viewModel.$greenValue,
                    in: 0...1
                )
            }.padding()
            
            HStack {
                Text("Blue")
                
                Slider(
                    value: viewModel.$blueValue,
                    in: 0...1
                )
            }.padding()
            
        }.padding()
    }
}

struct MySliderView_Previews: PreviewProvider {
    static var previews: some View {
        MySliderView(
            viewModel: MySliderViewModel(
                redValue: .constant(0.0),
                greenValue: .constant(0.0),
                blueValue: .constant(0.0)
            )
        )
    }
}
