---
title: Swift Unit Test Asynchronous
completion-scope: ClassImplementation
summary: Unit test function with expectations
platform: iphoneos
---
   func testAsynch() {
        _ = expectation(description: "Asynch execution should finish")

        // Do something asynch and fulfill the expectation when finished


        waitForExpectations(timeout: 10.0) { error in
            if let e = error {
                XCTFail("Test did not finish \(e)")
            } else {
                XCTAssertTrue(true)
            }
        }
    }
