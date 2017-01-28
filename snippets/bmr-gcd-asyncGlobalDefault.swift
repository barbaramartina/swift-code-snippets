---
title: Swift GCD Async Global Default
completion-scope: CodeBlock
summary: dispatch a block to a global queue with QOS Default
platform: iphoneos
---

    DispatchQueue.global(qos: .default).async {
      <#code#>
    }
