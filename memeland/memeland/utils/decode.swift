/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Bui Quang An
  ID: 3877482
  Created  date: 28/07/2022
  Last modified: 04/08/2022
  Acknowledgement: Hacking with swift
*/
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
