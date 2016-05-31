---
title: Swift Unit Test for predicates
completion-scope: ClassImplementation
summary: Unit test function using predicates
platform: iphoneos
--- 
    func testExpectationForPredicate() {

        // Make sure you have an array as a var in your test case class, names 'names'
        let testPredicate = NSPredicate(format:"names CONTAINS \"George\"")

        expectationForPredicate(testPredicate, evaluatedWithObject: self, handler: nil)
        
        names = ["George"]
        
        waitForExpectationsWithTimeout(10) { error in
            // Make your assertions
        }

    }
    
