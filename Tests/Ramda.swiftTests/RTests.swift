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

    func test_all() {
        let equals3 = { (n: Int) in n == 3 }
        XCTAssertTrue(R.all(equals3)([3, 3, 3]))
        XCTAssertFalse(R.all(equals3)([3, 4, 3]))
    }

    func test_allPass() {
        let lessThan10 = { (n: Int) in n < 10 }
        let greaterThan0 = { (n: Int) in n > 0 }
        XCTAssertTrue(R.allPass([lessThan10, greaterThan0])([1, 2, 9]))
        XCTAssertFalse(R.allPass([lessThan10, greaterThan0])([1, 2, -1]))
    }

    func test_always() {
        final class Test {}
        let instance = Test()
        let result = R.always(instance)
        XCTAssertTrue(instance === result)
    }

    func test_and() {
        XCTAssertTrue(R.and(true, true))
        XCTAssertFalse(R.and(false, true))
        XCTAssertFalse(R.and(true, false))
        XCTAssertFalse(R.and(false)(false))
    }

    func test_any() {
        let equals3 = { (n: Int) in n == 3 }
        XCTAssertTrue(R.any(equals3)([1, 3, 2]))
        XCTAssertFalse(R.any(equals3)([1, 4, 2]))
    }

    func test_anyPass() {
        let lessThan10 = { (n: Int) in n < 10 && n > 0 }
        let greaterThan0 = { (n: Int) in n > 0 }
        XCTAssertTrue(R.anyPass([lessThan10, greaterThan0])([11, -1, 9]))
        XCTAssertFalse(R.anyPass([lessThan10, greaterThan0])([-2, -1, -4]))
    }
}
