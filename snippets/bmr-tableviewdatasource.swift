---
title: Swift UIKit TableViewDataSource methods
completion-scope: ClassImplementation
summary: Methods you need to implement when adopting the UITableViewDataSource protocol
platform: iphoneos
--- 
    //MARK: UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return <#numberOfSections#>
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return <#numberOfRows#>
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(<#identifier#>, forIndexPath: indexPath) 
        configureCell(cell, forRowAtIndexPath: indexPath)
        return cell
    }
    
    func configureCell(cell: UITableViewCell, forRowAtIndexPath: NSIndexPath) {
        
    }

