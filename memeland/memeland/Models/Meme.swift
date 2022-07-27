//
//  Meme.swift
//  memeland
//
//  Created by Bui Quang An on 24/07/2022.
//

import Foundation

struct Meme :Identifiable, Codable{
    let id: Int
    let title, imgSrc, description: String
}

func decodeFromJsonFile(fileName: String) -> [Meme]{
    if let file = Bundle.main.url(forResource: fileName, withExtension: nil){
        if let data = try? Data(contentsOf: file){
            do{
                let decoded = try JSONDecoder().decode([Meme].self, from: data)
                return decoded
            } catch let error{
                fatalError("Cannot decode file: \(error)")
            }
        } else{
            fatalError("Cannot read file")
        }
    }
    return [] as [Meme]
}
