---
title: Swift KVO Observing Values
completion-scope: ClassImplementation
summary: Code template for observing KVO changes
platform: iphoneos
--- 
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        
        let key = keyPath!
        switch key {
        case "executing", "cancelled", "finished", "concurrent", "asynchronous", "ready", "name":
            print("operation information: \(key) - \((object?.description) ?? "")")
        case "operations", "operationCount", "maxConcurrentOperationCount", "suspended", "name":
            print("queue information: \(key) - \((object?.description) ?? "")")
        default:
            return
        }
    }
