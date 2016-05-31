---
title: Swift Unit Test for notifications
completion-scope: ClassImplementation
summary: Unit test function to check if a notification was properly triggered
platform: iphoneos
--- 
   func testNotification() {
        expectationForNotification(UIDeviceBatteryLevelDidChangeNotification, object: UIDevice.currentDevice()) { (NSNotification) -> Bool in
            //TODO: do something to check if the notifications brings i.e the information you need OR DO NOT USE A CALLBACK AT ALL, and the result will be true as ong as the notification is raised.
            let isNotificationAsExpected = true
            return isNotificationAsExpected
        }

        //DO something to trigger UIDeviceBatteryLevelDidChangeNotification

        waitForExpectationsWithTimeout(10.0) { error in
            // Make your assertions
        }
    }
