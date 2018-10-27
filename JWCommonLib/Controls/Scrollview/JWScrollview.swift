//
//  Scrollview.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 8/5/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
class JWScrollview : UIScrollView{
    override func layoutSubviews() {
        super.layoutSubviews()
        super.keyboardDismissMode = .onDrag
    }
}
