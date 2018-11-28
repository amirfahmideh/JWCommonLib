//
//  ImageHelper.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 8/19/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit

public class ImageHelper {
    //
    // Convert String to base64
    //
    public static func convertImageToBase64(image: UIImage) -> String {
        let imageData = UIImagePNGRepresentation(image)!
        return imageData.base64EncodedString()
    }
    //
    // Convert base64 to String
    //
    public static func convertBase64ToImage(imageString: String) -> UIImage {
        let imageData = Data(base64Encoded: imageString)!
        return UIImage(data: imageData)!
    }
}
