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
        ScrollView(.horizontal) {
            HStack {
                ForEach(colors, id: \.self) { color in
                    Rectangle()
                        .foregroundColor(color)
                        .frame(width: 45, height: 45)
                        .onTapGesture {
                            selectedColor = color
                        }
                }
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(35)
            .padding(.horizontal)
        }
    }
}

struct CustomColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomColorPicker(selectedColor: .constant(.black))
    }
}
