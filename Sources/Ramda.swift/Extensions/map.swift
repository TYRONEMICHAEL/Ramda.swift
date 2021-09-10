import Foundation

extension R {

    public class func map<A, B>(_ f: (A) -> B, _ list: [A]) -> [B] {
        return list.map(f)
    }

    public class func map<A, B, E>(_ f: (A) -> B, _ result: Result<A, E>) -> Result<B, E> {
        return result.map(f)
    }

    public class func map<A, B>(_ f: (A) -> B, _ result: Optional<A>) -> Optional<B> {
        return result.map(f)
    }

    public class func map<A, B>(_ f: @escaping (A) -> B) -> (_ list: [A]) -> [B] {
        curry(map)(f)
    }

    public class func map<A, B, E>(_ f: @escaping (A) -> B) -> (_ result: Result<A, E>) -> Result<B, E> {
        curry(map)(f)
    }

    public class func map<A, B>(_ f: @escaping (A) -> B) -> (_ result: Optional<A>) -> Optional<B> {
        curry(map)(f)
    }

}
