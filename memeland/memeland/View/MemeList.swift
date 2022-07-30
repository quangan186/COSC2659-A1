//
//  MemeList.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct MemeList: View {
    let memes = decodeFromJsonTopicFile(fileName: "memes.json")
    @State private var searchTopic = ""
    var body: some View {
        List(searchResults) { meme in
            NavigationLink(destination: MemeDetails(memeTopic: meme)){
                MemeRow(meme: meme)
            }
        }.searchable(text: $searchTopic, prompt: "Search").navigationTitle("Meme list").navigationBarTitleDisplayMode(.inline)
    }
    
    var searchResults: [MemeTopic]{
        if searchTopic.isEmpty {
            return memes
        }else{
            return memes.filter({(item) -> Bool in return item.title == searchTopic})
        }
    }
}

struct MemeList_Previews: PreviewProvider {
    static var previews: some View {
        MemeList()
    }
}

struct MemeRow: View{
    var meme: MemeTopic
    var body: some View {
        Text("\(meme.title)")
    }
}
