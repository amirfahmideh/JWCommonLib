import UIKit
extension String {
    func ToENIntNumber() -> Int {
        let Formatter = NumberFormatter()
        Formatter.locale = NSLocale(localeIdentifier: "EN") as Locale?
        let final = Formatter.number(from: self)
        return Int(truncating: final!)
    }
    func ToENInt64Number() -> Int64 {
        let Formatter = NumberFormatter()
        Formatter.locale = NSLocale(localeIdentifier: "EN") as Locale?
        let final = Formatter.number(from: self)
        return Int64(truncating: final!)
    }

}
