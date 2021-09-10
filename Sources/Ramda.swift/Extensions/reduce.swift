extension R {

    public class func reduce<A, B>(_ function: (B, A) -> B, _ initial: B, _ list: [A]) -> B {
        return list.reduce(initial, function)
    }

    public class func reduce<A, B>(_ function: @escaping (B, A) -> B) -> (_ initial: B) -> (_ list: [A]) -> B {
        return curry(reduce)(function)
    }

}
