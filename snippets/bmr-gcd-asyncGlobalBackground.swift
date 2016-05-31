---
title: Swift GCD Async Global Background
completion-scope: CodeBlock
summary: dispatch a block to a global queue with QOS Background
platform: iphoneos
--- 

        dispatch_async(dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)) {
            
        }

