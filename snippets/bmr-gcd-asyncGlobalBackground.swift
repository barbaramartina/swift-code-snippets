---
title: Swift GCD Async Global Background
completion-scope: CodeBlock
summary: dispatch a block to a global queue with QOS Background
platform: iphoneos
---

    DispatchQueue.global(qos: .background).async {
      <#code#>
    }
