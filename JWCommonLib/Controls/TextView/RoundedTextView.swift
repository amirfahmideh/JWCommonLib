import UIKit

@IBDesignable
class RoundedTextView:UITextView {
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
}
