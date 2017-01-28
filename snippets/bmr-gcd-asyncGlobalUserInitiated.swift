---
title: Swift GCD Async Global UserInitiated
completion-scope: CodeBlock
summary: dispatch a block to the global queue with QOS User Initiated
platform: iphoneos
---

       DispatchQueue.global(qos: .userInitiated).async {
        <#code#>
      }
