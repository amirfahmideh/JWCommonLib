//
//  JWSimpleTableView.swift
//  JWCommonLib
//
//  Created by Amir Fahmideh on 8/8/1397 AP.
//  Copyright © 1397 AP Amir Fahmideh. All rights reserved.
//

import UIKit
open class JWSimpleTableViewController : UITableViewController
{
    public var AddNewItemSegueIdentifier : String = ""
    public var ShowDetailesSegueIdentifier : String = ""
    public var IsTableViewEditEnable : Bool = true
    public var DeleteButtonTitle : String?
    public var NumberOfTableViewSection : Int = 1
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        var rightBarItems = [UIBarButtonItem]()
        
        if(!AddNewItemSegueIdentifier.isEmpty){
            let addButton : UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(onAddNewItem(sender:)))
            rightBarItems.append(addButton)
        }
        if(IsTableViewEditEnable){
            let editButton  =
                UIBarButtonItem(title:DeleteButtonTitle ?? "حذف", style: UIBarButtonItem.Style.plain, target: self, action: #selector(onTableViewEditMode(sender:)))
            rightBarItems.append(editButton)
        }
        self.navigationItem.rightBarButtonItems = rightBarItems
    }
    
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return NumberOfTableViewSection
    }
    
    override open func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String?
    {
        return DeleteButtonTitle ?? "حذف"
    }
    
    @objc func onAddNewItem(sender:Any){
        self.performSegue(withIdentifier: self.AddNewItemSegueIdentifier, sender: sender)
    }
    
    @objc func onTableViewEditMode(sender:UIBarButtonItem){
        if(self.tableView.isEditing){
            sender.title = DeleteButtonTitle ?? "حذف"
            self.tableView.setEditing(false, animated: true)
        }
        else {
            sender.title = "انصراف"
            self.tableView.setEditing(true, animated: false)
        }
    }
}
