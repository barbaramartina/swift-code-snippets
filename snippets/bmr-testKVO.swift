---
title: Swift Unit Test for KVO properties
completion-scope: ClassImplementation
summary: Unit test function to observe changes using KVO
platform: iphoneos
---
  
     func testKVOExpectation() {
        // Make sure you have the following vars in your test case class:
        //        var asyncOperation1: MyAsynchronousOperation? // your operation
        //        var queue1: NSOperationQueue?
        keyValueObservingExpectationForObject(asyncOperation1!, keyPath: "isExecuting", expectedValue: true)

        queue1!.addOperation(asyncOperation1!)

        waitForExpectations(timeout: 10.0) { error in
            // TODO: make your assertions
        }

    }
