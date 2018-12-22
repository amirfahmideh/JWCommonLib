//
//  JWLabel.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 8/8/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
open class JWLable:UILabel{
    
    override open func layoutSubviews() {
        super.layoutSubviews()
    }
    
    @IBInspectable open var paddingTop: CGFloat = 0
    @IBInspectable open var paddingRight: CGFloat = 0
    @IBInspectable open var paddingBottom: CGFloat = 0
    @IBInspectable open var paddingLeft: CGFloat = 0
    
    override open func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: paddingTop, left: paddingLeft, bottom: paddingBottom, right: paddingRight)
        super.drawText(in: rect.inset(by: insets))
    }
    
    
    override open var intrinsicContentSize : CGSize {
        let superContentSize = super.intrinsicContentSize
        let width = superContentSize.width + paddingLeft + paddingRight
        let heigth = superContentSize.height + paddingTop + paddingBottom
        return CGSize(width: width, height: heigth)
    }

}
