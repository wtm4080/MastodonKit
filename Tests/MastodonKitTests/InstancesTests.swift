import XCTest
@testable import MastodonKit

class InstancesTests: XCTestCase {
    static var allTests = [
        ("testCurrent", testCurrent)
    ]

    func testCurrent() {
        let resource = Instances.current()

        XCTAssertEqual(resource.path, "/api/v1/instance")
        XCTAssertNil(resource.parameters)
        XCTAssertNotNil(resource.parse)
    }
}