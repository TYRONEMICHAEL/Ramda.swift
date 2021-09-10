import Foundation

extension R {

    public class func ap<A, B>(_ functions: [(A) -> B], _ list: [A]) -> [B] {
        return reduce({ (result, function) in
            return result + map(function, list)
        }, [], functions)
    }

    public class func ap<A, B>(_ functions: [(A) -> B]) -> (_ list: [A]) -> [B] {
        return curry(ap)(functions)
    }

}
