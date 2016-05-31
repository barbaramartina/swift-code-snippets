---
title: Swift GCD Async Global UserInitiated
completion-scope: CodeBlock
summary: dispatch a block to the global queue with QOS User Initiated
platform: iphoneos
--- 
        
       dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0)) {
            
        }
