import UIKit

public class JWSimpleMessageDialog{
    static let Style:UIAlertControllerStyle = .alert
    public static func JWShowMessage(base: UIViewController,title:String,message:String){
        let alertVC = UIAlertController(
            title: title,
            message: message,
            preferredStyle: JWSimpleMessageDialog.Style
        )
        
        let okAction = UIAlertAction(
            title: "متوجه شدم",
            style:.default,
            handler: nil)
        
        alertVC.addAction(okAction)
        base.present(
            alertVC,
            animated: true,
            completion: nil)
    }
    
    public static func JWShowMessage(base: UIViewController,title:String,message:String,okHandler: ((UIAlertAction) -> Void)?){
        let alertVC = UIAlertController(
            title: title,
            message: message,
            preferredStyle: JWSimpleMessageDialog.Style)
        
        let okAction = UIAlertAction(
            title: "متوجه شدم",
            style:.default,
            handler: okHandler)
        
        alertVC.addAction(okAction)
        
        base.present(
            alertVC,
            animated: true,
            completion: nil)
    }
    public static func JWShowMessageOKDissmis(base: UIViewController,title:String,message:String,okHandler: ((UIAlertAction) -> Void)?){
        let alertVC = UIAlertController(
            title: title,
            message: message,
            preferredStyle: JWSimpleMessageDialog.Style)
        
        
        
        let okAction = UIAlertAction(
            title: "بلی",
            style:.default,
            handler: okHandler)
        
        
        let cancelAction = UIAlertAction(
            title: "انصراف",
            style:.default,
            handler:{(_)in
                alertVC.dismiss(animated: true, completion: nil)
        })
        
        alertVC.addAction(cancelAction)
        alertVC.addAction(okAction)
        
        base.present(
            alertVC,
            animated: true,
            completion: nil)
    }
}
