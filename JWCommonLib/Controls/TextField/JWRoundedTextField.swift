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
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        clipsToBounds = true
        
        if borderWidth > 0 {
            layer.borderColor = normalBorderColor?.cgColor
        }
        
    }

}
