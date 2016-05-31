---
title: Swift Unit Test Asynchronous
completion-scope: ClassImplementation
summary: Unit test function with expectations
platform: iphoneos
--- 
    func testAsynch() {
        let expectation = expectationWithDescription("Asynch execution should finish")
        
        // Do something asynch and fulfill the expectation when finished
      
        
        waitForExpectationsWithTimeout(10.0) { error in
            if let e = error {
                XCTFail("Test did not finish \(e)")
            } else {
                XCTAssertTrue(true)
            }
        }
    }

