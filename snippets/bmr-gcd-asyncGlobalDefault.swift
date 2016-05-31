---
title: Swift GCD Async Global Default
completion-scope: CodeBlock
summary: dispatch a block to a global queue with QOS Default
platform: iphoneos
--- 

        dispatch_async(dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0)) {
            
        }
