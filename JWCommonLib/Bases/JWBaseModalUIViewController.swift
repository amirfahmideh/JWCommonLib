//
//  JWBaseModalUIViewController.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 9/29/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
open class JWBaseModalUIViewController:UIViewController {
    var backButtonLabel = UILabel(frame: CGRect(x:0,y:0,width:100,height:100))
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        
        let backButton = JWRoundedButton(type:.custom)
//                backButton.frame = CGRectMake(20, 40, 70, 30);
        backButton.frame = CGRect.zero
        backButton.setTitle("بازگشت", for: .normal)
        //normalj
        backButton.setTitleColor(UIColor(rgb:0x3c577A), for: .normal)
        backButton.normalBorderColor = UIColor(rgb:0x3c577A)
        backButton.normalBackgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        //highlight
        backButton.setTitleColor(UIColor.white, for: .highlighted)
        backButton.highlightedBorderColor =  UIColor(rgb:0x3c577A)
        backButton.highlightedBackgroundColor =  UIColor(rgb:0x3c577A)
        //border
        backButton.borderWidth = 1
        backButton.cornerRadius = 2
        
        
        backButton.titleLabel?.font = UIFont(name:"IranSansMobile",size:12)
        backButton.addTarget(self, action: #selector(backToPreviewNavigation(sender:)), for: UIButton.Event.touchUpInside)
        self.view.addSubview(backButton)
        
        //Back button position in view
        backButton.translatesAutoresizingMaskIntoConstraints = false

        if #available(iOS 11, *) {
            let guide = view.safeAreaLayoutGuide
            backButton.topAnchor.constraint(equalTo: guide.topAnchor,constant:20).isActive = true
            backButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor,constant:20).isActive = true
            
        } else {
            let standardSpacing: CGFloat = 20.0
            backButton.topAnchor.constraint(equalTo: self.view.topAnchor,constant:standardSpacing).isActive = true
            backButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant:standardSpacing).isActive = true
        }
        
        backButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    override open func viewWillAppear (_ animated: Bool){
        super.viewWillAppear(false)
    }
    
    @objc func backToPreviewNavigation(sender:Any){
        //because it is pop view we should dismiss it!
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
