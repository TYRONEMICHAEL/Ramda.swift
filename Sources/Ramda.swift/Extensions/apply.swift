import Foundation

extension R {

    public class func apply<A, B>(_ fn: (A) -> B, _ arg: A) -> B {
        return fn(arg)
    }

    public class func apply<A, B>(_ fn: @escaping (A) -> B) -> (_ arg: A) -> B {
        return curry(apply)(fn)
    }

}
