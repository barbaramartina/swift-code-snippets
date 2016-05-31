---
title: Swift GCD Async Global Utility
completion-scope: CodeBlock
summary: dispatch a block to a global queue with QOS Utility
platform: iphoneos
--- 

        dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0)) {
            
        }

