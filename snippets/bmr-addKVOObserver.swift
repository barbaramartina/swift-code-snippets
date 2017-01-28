---
title: Swif KVO Add Observer
completion-scope: CodeBlock
summary: Code example to see how to add an observer for KVO
platform: iphoneos
--- 
       queue.addObserver(self, forKeyPath: "operations", options: .new, context: nil)

// Example:
//class x : NSObject {
//    func y() {
//        let queue = DispatchQueue.main
//        queue.addObserver(self, forKeyPath: "operations", options: .new, context: nil)
//    }
//}

 
