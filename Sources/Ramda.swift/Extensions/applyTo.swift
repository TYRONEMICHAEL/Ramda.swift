import Foundation

extension R {

    public class func applyTo<A, B>(_ arg: A, _ fn: (A) -> B) -> B {
        return R.apply(fn, arg)
    }

    public class func applyTo<A, B>(_ arg: A) -> (_ fn: @escaping (A) -> B) -> B {
        return curry(applyTo)(arg)
    }

}
