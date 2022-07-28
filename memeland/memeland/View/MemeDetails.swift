//
//  Card.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct MemeDetails: View {
    var memeTopic: MemeTopic
 
//    var memeItem = decodeFromJsonItemFile(fileName: "memeList.json")
    var body: some View {
        ScrollView{
            VStack(spacing: 12){
                    Image(memeTopic.imgSrc).resizable().scaledToFit()
                    Text("\(memeTopic.title)").font(.custom("Montserrat", size: 30)).fontWeight(.semibold)
                Text("\(memeTopic.description)").font(.custom("Montserrat", size: 16)).padding(.horizontal).fixedSize(horizontal: false, vertical: true).lineSpacing(12)
                ForEach(memeTopic.memesList.filter({ (meme) -> Bool in
                    return meme.topic == memeTopic.title}), id: \.memeId){ item in
                    Image(item.memeSrc).resizable().scaledToFill()
                        Text(item.note).font(.custom("Montserrat", size: 16))
                }
                    Spacer()
                Button("Download all \(Image(systemName:"square.and.arrow.down"))"){
                    
                }.padding().background(Color("lightBlue")).foregroundColor(.white).cornerRadius(15)
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).padding(.bottom)
            }
    }
}

struct MemeDetails_Previews: PreviewProvider {
    static var previews: some View {
        let memes = decodeFromJsonTopicFile(fileName: "memes.json")
        MemeDetails(memeTopic: memes.first!)
    }
}
