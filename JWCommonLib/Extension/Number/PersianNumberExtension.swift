import UIKit
public extension Float {
    public func ToPersianNumber() -> String? {
        let nf = NumberFormatter()
        nf.numberStyle = .none
        nf.locale = Locale(identifier: "fa_IR")
        return nf.string(for: self) ?? ""
    }
}
public extension String {
    public func ToPersianNumber() -> String? {
        let nf = NumberFormatter()
        nf.numberStyle = .none
        nf.locale = Locale(identifier: "fa_IR")
        return nf.string(for: self) ?? ""
    }
}
public extension Decimal {
    public func ToPersianNumber() -> String? {
        let nf = NumberFormatter()
        nf.numberStyle = .none
        nf.locale = Locale(identifier: "fa_IR")
        return nf.string(for: self) ?? ""
    }
}
public extension Int {
    public func ToPersianNumber() -> String? {
        let nf = NumberFormatter()
        nf.numberStyle = .none
        nf.locale = Locale(identifier: "fa_IR")
        return nf.string(for: self) ?? ""
    }
}
