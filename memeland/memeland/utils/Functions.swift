//
//  Functions.swift
//  memeland
//
//  Created by Bui Quang An on 31/07/2022.
//

import Foundation

func sortButton(state: Bool) -> Void{
    if (state){
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
