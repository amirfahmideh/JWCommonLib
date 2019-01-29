//
//  UserDefaultStorage.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 11/9/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
public class UserDefaultStorage {
    public static func Save(key:String, value:Any){
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    public static func Get<T>(type:T.Type, key:String) -> T{
        let defaults = UserDefaults.standard
        return defaults.object(forKey: key) as! T
    }

}
