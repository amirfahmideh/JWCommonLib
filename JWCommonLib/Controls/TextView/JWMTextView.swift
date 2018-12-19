import UIKit
///Material Text Field
@IBDesignable
open class JWMTextView:UITextView {
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    //Normal state bg and border
    @IBInspectable var normalBorderColor: UIColor? {
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
    
    @IBAction func doneBtnFromKeyboardClicked (sender: Any) {
        super.endEditing(true)
    }
}
