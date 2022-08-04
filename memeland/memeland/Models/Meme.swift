/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Bui Quang An
  ID: 3877482
  Created  date: 24/07/2022
  Last modified: 04/08/2022
  Acknowledgement: Hacking with swift
*/
import Foundation

struct MemeTopic :Identifiable, Codable{
    var id: Int
    var title, imgSrc, description: String
    var memesList: [MemeItem]
}

struct MemeItem: Codable{
    var memeId: Int
    var topic, memeSrc, note, link: String
}
