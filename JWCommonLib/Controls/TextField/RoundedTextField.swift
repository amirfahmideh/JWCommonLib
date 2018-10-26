import UIKit

@IBDesignable
class RoundedTextField:UITextField {
    var padding : UIEdgeInsets;
    
    required init?(coder aDecoder: NSCoder) {
        self.padding = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        super.init(coder: aDecoder)
    }
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        clipsToBounds = true
        
        if borderWidth > 0 {
            layer.borderColor = normalBorderColor?.cgColor
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }

}
