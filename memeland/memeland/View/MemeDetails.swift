//
//  Card.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct MemeDetails: View {
    var meme: Meme
    
    var body: some View {
        VStack(){
            Image("theBoys").resizable().scaledToFit()
            Text("\(meme.title)")
            Text("\(meme.description)")
        }.frame(width: .infinity,  alignment: .center)
        
    }
}

struct MemeDetails_Previews: PreviewProvider {
    static var previews: some View {
        let memes = decodeFromJsonFile(fileName: "memes.json")
        MemeDetails(meme: memes.first!)
    }
}
