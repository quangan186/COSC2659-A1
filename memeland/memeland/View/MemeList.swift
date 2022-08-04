/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Bui Quang An
  ID: 3877482
  Created  date: 22/07/2022
  Last modified: 04/08/2022
  Acknowledgement: Hacking with swift
*/
import SwiftUI

struct MemeList: View {
    @State var memes = decodeFromJsonTopicFile(fileName: "memes.json")
    @State var isSorted = false
    @State private var searchTopic = ""
    var body: some View {
        VStack(){
            HStack{
                Text("Topics(\(memes.count))").padding(.horizontal)
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
            // Render topics in the json file based on the search
            List(searchResults) { meme in
                NavigationLink(destination: MemeDetails(memeTopic: meme)){
                    MemeRow(meme: meme)
                }
            }.searchable(text: $searchTopic, prompt: "Search").navigationTitle("Meme list").navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
    // check the search input, if the input is empty, the list will show all topics. Otherwise, it will render the topics which contain the input
    var searchResults: [MemeTopic]{
        if searchTopic.isEmpty {
            return memes
        }else{
            return memes.filter({$0.title.contains(searchTopic)})
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
            // The structure of a row in the list
            Image(meme.imgSrc).resizable().frame(width: 80, height: 50)
            Text("\(meme.title)")
        }
    }
}
