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
        backButton.frame = CGRectMake(20, 40, 100, 30);
        backButton.setTitle("بازگشت", for: .normal)
        backButton.setTitleColor(UIColor.red, for: .normal)
        backButton.setTitleColor(UIColor.white, for: .highlighted)
        
        backButton.borderWidth = 1
        backButton.normalBorderColor = .red
        backButton.normalBackgroundColor = UIColor.white
        backButton.highlightedBorderColor = .red
        backButton.highlightedBackgroundColor = .red
        backButton.tintColor = UIColor.white
        backButton.cornerRadius = 6
        
        backButton.titleLabel?.font = UIFont(name:"IranSansMobile",size:14)
        backButton.addTarget(self, action: #selector(backToPreviewNavigation(sender:)), for: UIButton.Event.touchUpInside)
        self.view.addSubview(backButton)
        
        //        backButton.topAnchor.constraint(equalTo: self.view.topAnchor,constant:0).isActive = true
        //        backButton.leftAnchor.constraint(equalTo: self.view.leftAnchor,constant:0).isActive = true
    }
    override open func viewWillAppear (_ animated: Bool){
        super.viewWillAppear(false)
    }
    
    @objc func backToPreviewNavigation(sender:Any){
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
