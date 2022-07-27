//
//  MemeList.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct MemeList: View {
    let memes = decodeFromJsonFile(fileName: "memes.json")
    var body: some View {
        List(memes) { meme in
            NavigationLink(destination: MemeDetails(meme: meme)){
                MemeRow(meme: meme)
            }
            
        }.navigationTitle("Meme list").navigationBarTitleDisplayMode(.inline)
    }
}

struct MemeList_Previews: PreviewProvider {
    static var previews: some View {
        MemeList()
    }
}

struct MemeRow: View{
    var meme: Meme
    var body: some View {
        Text("\(meme.id): \(meme.title)")
    }
}
