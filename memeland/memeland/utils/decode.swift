//
//  decode.swift
//  memeland
//
//  Created by Bui Quang An on 28/07/2022.
//

import Foundation

func decodeFromJsonTopicFile(fileName: String) -> [MemeTopic]{
    if let file = Bundle.main.url(forResource: fileName, withExtension: nil){
        if let data = try? Data(contentsOf: file){
            do{
                let decoded = try JSONDecoder().decode([MemeTopic].self, from: data)
                return decoded
            } catch let error{
                fatalError("Cannot decode file: \(error)")
            }
        } else{
            fatalError("Cannot read file")
        }
    }
    return [] as [MemeTopic]
}
