//
//  CustomColorPicker.swift
//  Color-Picker-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-01.
//

import SwiftUI

struct CustomColorPicker: View {
    @Binding var selectedColor: Color
    private let colors: [Color] = [.white, .black, .mint, .green, .indigo, .blue, .purple, .orange, .yellow, .red]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CustomColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomColorPicker(selectedColor: .constant(.black))
    }
}
