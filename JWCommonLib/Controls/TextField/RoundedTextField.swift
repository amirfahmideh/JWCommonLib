import UIKit

@IBDesignable
class RoundedTextField:UITextField {
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
    @IBInspectable var topInset: CGFloat = 0 {
        didSet {
            padding.top = topInset
        }
    }
    @IBInspectable var rightInset: CGFloat = 0 {
        didSet {
            padding.right = rightInset
        }
    }
    @IBInspectable var bottomInset: CGFloat = 0 {
        didSet {
            padding.bottom  = bottomInset
        }
    }
    @IBInspectable var leftInset: CGFloat = 0 {
        didSet {
            padding.left = leftInset
        }
    }
    //Normal state bg and border
    @IBInspectable var normalBorderColor: UIColor? {
        didSet {
            layer.borderColor = normalBorderColor?.cgColor
        }
    }
    
    var padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    
    override func layoutSubviews() {
        super.layoutSubviews()
        clipsToBounds = true
        if borderWidth > 0 {
            layer.borderColor = normalBorderColor?.cgColor
        }
    }

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
}
