---
title: Swift GCD Async Global UserInteractive
completion-scope: CodeBlock
summary: dispatch a block to a global queue with QOS User Interactive
platform: iphoneos
--- 

        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0)) {
            
        }

