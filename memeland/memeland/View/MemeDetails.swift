//
//  Card.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct MemeDetails: View {
    var memeTopic: MemeTopic
 
    
    var body: some View {
        ScrollView{
            VStack(spacing: 12){
                    Image(memeTopic.imgSrc).resizable().scaledToFit()
                    Text("\(memeTopic.title)").font(.custom("Montserrat", size: 30)).fontWeight(.semibold)
                Text("\(memeTopic.description)").font(.custom("Montserrat", size: 16)).padding(.horizontal).fixedSize(horizontal: false, vertical: true).lineSpacing(12)
                Text("Meme templates").font(.custom("Montserrat", size: 30)).fontWeight(.semibold).padding()
                ForEach(memeTopic.memesList.filter({ (meme) -> Bool in
                    return meme.topic == memeTopic.title}), id: \.memeId){ item in
                        Image(item.memeSrc).resizable().scaledToFill().padding(.top)
                        Text(item.note).font(.custom("Montserrat", size: 16)).padding(.horizontal)
                    Link(destination: URL(string: item.link)!, label: {
                        Text("Link to the template")
                    }).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(Color("lightBlue")).foregroundColor(.white).cornerRadius(15)
                    
                }
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
