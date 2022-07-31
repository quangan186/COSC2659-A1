//
//  MemeList.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct MemeList: View {
    @State var memes = decodeFromJsonTopicFile(fileName: "memes.json")
    @State var isSorted = false
    @State private var searchTopic = ""
    var body: some View {
        VStack(){
            HStack{
                Spacer()
                if (isSorted){
                    Button("Sort Z-A"){
                        memes = memes.sorted(by: {$0.title > $1.title})
                        isSorted = false
                    }
                    .padding(.trailing)
                }
                else{
                    Button("Sort A-Z"){
                        memes = memes.sorted(by: {$0.title < $1.title})
                        isSorted = true
                    }
                    .padding(.trailing)
                }
            }
            
            List(searchResults) { meme in
                NavigationLink(destination: MemeDetails(memeTopic: meme)){
                    MemeRow(meme: meme)
                }
            }.searchable(text: $searchTopic, prompt: "Search").navigationTitle("Meme list").navigationBarTitleDisplayMode(.inline)
        }
        
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
        HStack(spacing: 10){
            Image(meme.imgSrc).resizable().frame(width: 80, height: 50)
            Text("\(meme.title)")
        }
    }
}
