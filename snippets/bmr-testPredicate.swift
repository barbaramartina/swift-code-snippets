---
title: Swift Unit Test for predicates
completion-scope: ClassImplementation
summary: Unit test function using predicates
platform: iphoneos
---

    func testExpectationForPredicate() {

        // Make sure you have an array as a var in your test case class, names 'names'
        let testPredicate = NSPredicate(format:"names CONTAINS \"George\"")

        expectation(for: testPredicate, evaluatedWith: self, handler: nil)

        names = ["George"]

        waitForExpectations(timeout: 10) { error in
            // Make your assertions
        }

    }
