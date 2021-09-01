import Foundation

extension R {

    public class func all<A>(_ f: (A) -> Bool, _ list: [A]) -> Bool {
        for item in list {
            if !f(item) { return false }
        }

        return true
    }

    public class func all<A>(_ f: @escaping (A) -> Bool) -> (_ list: [A]) -> Bool {
        return curry(all)(f)
    }

}
