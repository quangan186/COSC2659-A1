/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Bui Quang An
  ID: 3877482
  Created  date: 21/07/2022
  Last modified: 04/08/2022
  Acknowledgement: Hacking with swift
*/

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
