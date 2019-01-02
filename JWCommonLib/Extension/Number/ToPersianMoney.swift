import UIKit
public extension Float {
    public func ToPersianMoney() -> String {
        let nf = NumberFormatter() // Default locale is `Locale.current`. On my simulator it equals en_US
        nf.numberStyle = .currency
        nf.locale = Locale(identifier: "fa_IR")
        return nf.string(for: self) ?? "" // $100,000.00
    }
}
