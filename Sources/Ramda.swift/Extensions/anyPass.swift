import Foundation

extension R {

    public class func anyPass<A>(_ predicates: [(A) -> Bool], _ list: [A]) -> Bool {
        for predicate in predicates {
            if R.any(predicate, list) { return true }
        }

        return false
    }

    public class func anyPass<A>(_ predicates: [(A) -> Bool]) -> (_ list: [A]) -> Bool {
        return curry(anyPass)(predicates)
    }

}
