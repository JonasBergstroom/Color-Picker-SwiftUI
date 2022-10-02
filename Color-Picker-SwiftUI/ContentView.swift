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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
