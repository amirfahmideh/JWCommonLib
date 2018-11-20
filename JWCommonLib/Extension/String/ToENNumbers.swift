import UIKit
public extension String {
    public func ToENIntNumber() -> Int {
        let Formatter = NumberFormatter()
        Formatter.locale = NSLocale(localeIdentifier: "EN") as Locale?
        let final = Formatter.number(from: self)
        return Int(truncating: final!)
    }
    public func ToENInt64Number() -> Int64 {
        let Formatter = NumberFormatter()
        Formatter.locale = NSLocale(localeIdentifier: "EN") as Locale?
        let final = Formatter.number(from: self)
        return Int64(truncating: final!)
    }

    //Decimal
    public func ToENDecimalNumber() -> Decimal? {
        let Formatter = NumberFormatter()
        Formatter.locale = NSLocale(localeIdentifier: "EN") as Locale?
        Formatter.numberStyle = .decimal;
        let final = Formatter.number(from: self)
        let decimalN:String = Formatter.string(from: final!)!
        return Decimal(string:decimalN)
    }
}
