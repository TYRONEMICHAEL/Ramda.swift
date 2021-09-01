import Foundation

extension R {

    public class func allPass<A>(_ predicates: [(A) -> Bool], _ list: [A]) -> Bool {
        for predicate in predicates {
            if !R.all(predicate, list) { return false }
        }

        return true
    }

    public class func allPass<A>(_ predicates: [(A) -> Bool]) -> (_ list: [A]) -> Bool {
        return curry(allPass)(predicates)
    }

}
