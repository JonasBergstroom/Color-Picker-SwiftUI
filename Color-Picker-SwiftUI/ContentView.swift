//
//  ContentView.swift
//  Color-Picker-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-01.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor: Color = .black
    
    var body: some View {
        VStack {
            CustomColorPicker(selectedColor: $selectedColor)
            Spacer()
            Rectangle()
                .frame(width: 320, height: 320)
                .foregroundColor(selectedColor)
            Text("\(selectedColor.description)")
                .font(.system(size: 45))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
