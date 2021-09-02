import Foundation

extension R {

    public class func and(_ a: Bool, _ b: Bool) -> Bool {
        return a && b
    }

    public class func and(_ a: Bool) -> (_ b: Bool) -> Bool {
        return curry(and)(a)
    }

}
