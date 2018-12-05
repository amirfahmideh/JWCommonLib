//
//  BaseUIViewController.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 6/17/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
open class JWBaseUIViewController:UIViewController {
    public var MoveOnKeyboardShow:Bool = false;
    
    private var oldOrigin : CGFloat = 0
    private var isFindedScrollView: Bool = false;
    private var findedScrollView: UIScrollView?
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        findScrollView(of: self.view)
        
        if(MoveOnKeyboardShow){
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: self.view.window)
            
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: self.view.window)
        }
    }
    override open func viewWillAppear (_ animated: Bool){
        super.viewWillAppear(false)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.oldOrigin = self.view.frame.origin.y
            if self.isFindedScrollView {
                self.findedScrollView!.contentInset.bottom = keyboardSize.height
//                self.findedScrollView!.contentInset.bottom = 700
            }
            else {
                self.view.frame.origin.y -= keyboardSize.height
            }
            //            if frameOrigin == 0
            //            {
            
            //                UIView.animate(withDuration: 0.01, animations: { () -> Void in
            //                    self.view.frame.origin.y -= keyboardSize.height
            //                })
            //            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        //        self.view.frame.origin.y = oldOrigin
        if self.isFindedScrollView {
            self.findedScrollView!.contentInset.bottom = 0
        }
        else {
            self.view.frame.origin.y = oldOrigin
        }
        //        UIView.animate(withDuration: 0.2, animations: { () -> Void in
        //            self.view.frame.origin.y = 0
        //        })
        
    }
    
    func findScrollView(of view: UIView) {
        for subview in view.subviews {
            if view is UIScrollView
            {
                self.isFindedScrollView = true
                self.findedScrollView =  (view as! UIScrollView)
            }
            else {
                findScrollView(of: subview)
            }
        }
    }
}
