//
//  Meme.swift
//  memeland
//
//  Created by Bui Quang An on 24/07/2022.
//

import Foundation

struct MemeTopic :Identifiable, Codable{
    var id: Int
    var title, imgSrc, description: String
    var memesList: [MemeItem]
}

struct MemeItem: Codable{
    var memeId: Int
    var topic, memeSrc, note: String
}




