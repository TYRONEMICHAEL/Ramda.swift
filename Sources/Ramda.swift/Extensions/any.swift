import Foundation

extension R {

    public class func any<A>(_ f: (A) -> Bool, _ list: [A]) -> Bool {
        for item in list {
            if f(item) { return true }
        }

        return false
    }

    public class func any<A>(_ f: @escaping (A) -> Bool) -> (_ list: [A]) -> Bool {
        return curry(any)(f)
    }

}
