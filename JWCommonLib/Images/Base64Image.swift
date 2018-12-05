//
//  Base64.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 8/5/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit

public class Base64Image {
    public static func convertImageToBase64(image: UIImage) -> String {
        let imageData = image.pngData()
        return (imageData?.base64EncodedString())!
    }
    //
    // Convert base64 to String
    //
    public static func convertBase64ToImage(imageString: String) -> UIImage {
        let imageData = Data(base64Encoded: imageString)!
        return UIImage(data: imageData)!
    }
}
