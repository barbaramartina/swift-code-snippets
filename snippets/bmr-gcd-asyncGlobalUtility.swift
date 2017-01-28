---
title: Swift GCD Async Global Utility
completion-scope: CodeBlock
summary: dispatch a block to a global queue with QOS Utility
platform: iphoneos
---

    DispatchQueue.global(qos: .utility).async {
    <#code#>
}
