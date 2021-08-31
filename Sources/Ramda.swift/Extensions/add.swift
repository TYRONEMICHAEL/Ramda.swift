import Foundation

extension R {

    public class func add<T: AdditiveArithmetic>(_ lhs: T, to rhs: T) -> T {
        return lhs + rhs
    }

    public class func add<T: AdditiveArithmetic>(_ lhs: T) -> (_ to: T) -> T {
        return curry(add)(lhs)
    }

}
