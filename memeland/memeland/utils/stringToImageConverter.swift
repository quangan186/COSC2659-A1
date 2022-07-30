//
//  stringToImageConverter.swift
//  memeland
//
//  Created by Bui Quang An on 29/07/2022.
//

import UIKit
extension String {
    func convertStringtoImage() -> UIImage? {
        if let data = Data(base64Encoded: self, options: .ignoreUnknownCharacters){
            return UIImage(data: data)
        }
        return nil
    }
}
