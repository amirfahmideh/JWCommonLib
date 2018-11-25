import UIKit

@IBDesignable
open class JWRoundedTextField:UITextField {
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    //Normal state bg and border
    @IBInspectable open var normalBorderColor: UIColor? {
        didSet {
            layer.borderColor = normalBorderColor?.cgColor
        }
    }
    @IBInspectable open var isDoneButtonExist: Bool = true {
        didSet {
            self.IsDoneButtonEnable = isDoneButtonExist
        }
    }
    open var IsDoneButtonEnable:Bool = true
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
        if IsDoneButtonEnable {
            let ViewForDoneButtonOnKeyboard = UIToolbar()
            ViewForDoneButtonOnKeyboard.sizeToFit()
            let btnDoneOnKeyboard = UIBarButtonItem(title: "اتمام", style: .plain, target: self, action: #selector(self.doneBtnFromKeyboardClicked))
            let rtlButtonHelper = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
            ViewForDoneButtonOnKeyboard.items = [rtlButtonHelper,btnDoneOnKeyboard]
            self.inputAccessoryView = ViewForDoneButtonOnKeyboard
        }
        clipsToBounds = true
        
        if borderWidth > 0 {
            layer.borderColor = normalBorderColor?.cgColor
        }
        
    }
    
    var padding = UIEdgeInsets(top:10,left:0,bottom:10,right:0)
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    @IBAction func doneBtnFromKeyboardClicked (sender: Any) {
        super.endEditing(true)
    }
    
}
