import Foundation

extension R {

    public class func addIndex<A, B>(_ f: (Int, A) -> B, _ list: [A]) -> [B] {
        return list.enumerated().map(f)
    }

    public class func addIndex<A, B>(_ f: @escaping (Int, A) -> B) -> (_ list: [A]) -> [B] {
        return curry(addIndex)(f)
    }

}
