//
//  ContentView.swift
//  memeland
//
//  Created by Bui Quang An on 21/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Home().edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
