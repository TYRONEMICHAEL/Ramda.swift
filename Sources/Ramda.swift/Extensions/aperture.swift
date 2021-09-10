import Foundation

extension R {

    public class func aperture<A>(_ split: Int, _ list: [A]) -> [[A]] {
        guard list.count > split, split != 0 else {
            return [list]
        }

        return [Array(list[0..<split])] + aperture(split, Array(list[split..<list.count]))
    }

    public class func aperture<A>(_ split: Int) -> (_ list: [A]) -> [[A]] {
        return curry(aperture)(split)
    }

}
