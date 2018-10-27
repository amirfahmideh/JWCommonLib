//
//  BaseUIViewController.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 6/17/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
open class BaseUIViewController:UIViewController {
    public var MoveOnKeyboardShow:Bool = true;
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        if(MoveOnKeyboardShow){
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: self.view.window)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: self.view.window)
        }
    }
    override open func viewWillAppear (_ animated: Bool){
        super.viewWillAppear(false)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                UIView.animate(withDuration: 0.01, animations: { () -> Void in
                    self.view.frame.origin.y -= keyboardSize.height
                })
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        UIView.animate(withDuration: 0.2, animations: { () -> Void in
            self.view.frame.origin.y = 0
        })
        
    }
}
