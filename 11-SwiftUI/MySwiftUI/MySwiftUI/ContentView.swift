//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Armstrong on 13/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Dicoding Academy")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.blue)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
