//
//  JWPersianDatepicker.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 8/24/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
@IBDesignable
class JWPersianDatepicker: UIDatePicker {
    override open func layoutSubviews() {
        super.layoutSubviews()
        //Set DatePicker to Persian Local Mode
        super.calendar = Calendar(identifier: Calendar.Identifier.persian)
        super.locale = Locale(identifier: "fa_IR")
    }
}
