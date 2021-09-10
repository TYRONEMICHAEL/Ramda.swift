import Foundation

extension R {

    public class func append<A>(_ elements: [A], _ list: [A]) -> [A] {
        return list + elements
    }

    public class func append<A>(_ element: A, _ list: [A]) -> [A] {
        var newList = list
        newList.append(element)
        return newList
    }

    public class func append<A>(_ elements: [A]) -> (_ list: [A]) -> [A] {
        return curry(append)(elements)
    }

    public class func append<A>(_ element: A) -> (_ list: [A]) -> [A] {
        return curry(append)(element)
    }
}
