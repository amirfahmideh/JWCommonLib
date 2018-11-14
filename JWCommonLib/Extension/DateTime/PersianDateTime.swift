//
//  PersianDateTime.swift
//  Khatoon
//
//  Created by Amir Fahmideh on 5/27/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
extension Date{
    public func PersianDateTime() -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        formatter.calendar = Calendar(identifier: .persian)
        return formatter.string(from: self)
    }
    public func PersianDateTime(formatStr:String) -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = formatStr
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        formatter.calendar = Calendar(identifier: .persian)
        return formatter.string(from: self)
    }
}

public extension String
{
    public func toDateTimeFromPersian() -> Date?
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        formatter.calendar = Calendar(identifier: .persian)
        return formatter.date(from: self)
    }
}
