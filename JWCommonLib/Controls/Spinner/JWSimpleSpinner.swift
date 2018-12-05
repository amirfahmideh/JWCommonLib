//
//  Spinner.swift
//  Khatoon
//
//  Created by Amir Fahmideh on 5/15/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
public class JWSimpleSpinner{
    public static func showLoader(view: UIView) -> UIActivityIndicatorView {
        //Customize as per your need
        let spinner = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 100, height:100))
        spinner.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        spinner.layer.cornerRadius = 5.0
        spinner.clipsToBounds = true
        spinner.hidesWhenStopped = true
        spinner.style = UIActivityIndicatorView.Style.whiteLarge;
        spinner.center = view.center
        view.addSubview(spinner)
        spinner.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
        return spinner
    }
    public static func CreateInstance(widthAndHeight:Int) -> UIActivityIndicatorView {
        //Customize as per your need
        let spinner = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: widthAndHeight, height:widthAndHeight))
        return spinner
    }
}

public extension UIActivityIndicatorView {
    func dismissLoader() {
        self.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
    }
}
