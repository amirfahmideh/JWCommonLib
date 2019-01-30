import UIKit

@IBDesignable
open class JWRoundedButton:UIButton {
    @IBInspectable open var cornerRadius: CGFloat = 4 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    //Normal state bg and border
    @IBInspectable open var normalBorderColor: UIColor? {
        didSet {
            layer.borderColor = normalBorderColor?.cgColor
        }
    }
    @IBInspectable open var normalBackgroundColor: UIColor? {
        didSet {
            setBgColorForState(color: normalBackgroundColor, forState: .normal)
        }
    }
    //Highlighted state bg and border
    @IBInspectable open var highlightedBorderColor: UIColor?
    @IBInspectable open var highlightedBackgroundColor: UIColor? {
        didSet {
            setBgColorForState(color: highlightedBackgroundColor, forState: .highlighted)
        }
    }
    private func setBgColorForState(color: UIColor?, forState: UIControl.State){
        if color != nil {
            setBackgroundImage(UIImage.imageWithColor(color: color!), for: forState)
        } else {
            setBackgroundImage(nil, for: forState)
        }
    }
    override open func layoutSubviews() {
        super.layoutSubviews()
        //layer.cornerRadius = layer.frame.height / 4
//        self.buttonType = ButtonType.custom
        clipsToBounds = true
        if borderWidth > 0 {
            if state == .normal && layer.borderColor != normalBorderColor?.cgColor {
                layer.borderColor = normalBorderColor?.cgColor
            } else if state == .highlighted && highlightedBorderColor != nil{
                layer.borderColor = highlightedBorderColor!.cgColor
            }
        }
    }
}
func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
    return CGRect(x: x, y: y, width: width, height: height)
}

func CGSizeMake(_ width: CGFloat, _ height: CGFloat) -> CGSize {
    return CGSize(width:width,height:height)
}
//Extension Required by RoundedButton to create UIImage from UIColor
extension UIImage {
    class func imageWithColor(color: UIColor) -> UIImage {
        let rect: CGRect = CGRectMake(0, 0, 1, 1)
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(1, 1), false, 1.0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

