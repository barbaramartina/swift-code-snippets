---
title: Swift UIKit TableViewDataSource methods
completion-scope: ClassImplementation
summary: Methods you need to implement when adopting the UITableViewDataSource protocol
platform: iphoneos
---
    //MARK: UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }


    func numberOfSections(in tableView: UITableView) -> Int  {
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    }

    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    }

    func sectionIndexTitles(for tableView: UITableView) -> [String]?{
    }

    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int{
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    }

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    }
