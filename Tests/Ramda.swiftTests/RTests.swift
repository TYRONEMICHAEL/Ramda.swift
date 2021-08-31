import XCTest
import Ramda_swift

final class Ramda_swiftTests: XCTestCase {
    func test_add() {
        let add1 = R.add(1)
        XCTAssertEqual(add1(2), R.add(1, to: 2))
    }

    func test_addIndex() {
        let f = { (x: Int, y: String) in "\(x) - \(y)" }
        let result = R.addIndex(f)(["a", "b", "c"])
        XCTAssertEqual(result, ["0 - a", "1 - b", "2 - c"])
    }
}
