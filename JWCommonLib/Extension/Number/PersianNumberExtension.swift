import UIKit
public extension NSNumber {
    public func ToPersianNumber() -> String? {
        let Formatter = NumberFormatter()
        Formatter.locale = NSLocale(localeIdentifier: "IR") as Locale?
        let final = Formatter.string(from: self)
        return final
    }
}
