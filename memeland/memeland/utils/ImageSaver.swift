//
//  ImageSaver.swift
//  memeland
//
//  Created by Bui Quang An on 29/07/2022.
//

import UIKit

class ImageSaver: NSObject{
    func saveImage(image: UIImage){
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveNotification), nil)
    }
    
    @objc func saveNotification(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer){
        print("Save finished")
    }
}
