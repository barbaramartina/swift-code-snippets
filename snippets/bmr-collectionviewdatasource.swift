---
title: Swift UIKit CollectionViewDataSource methods
completion-scope: ClassImplementation
summary: Methods you need to implement when adopting UICollectionViewDataSource
platform: iphoneos
--- 
    //MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return <#numberOfSections#>
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return <#numberOfItems#>
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(<#identifier#>, forIndexPath: indexPath)
        configureCell(cell, forItemAtIndexPath: indexPath)
        return cell
    }
    
    func configureCell(cell: UICollectionViewCell, forItemAtIndexPath: NSIndexPath) {
        
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        let view =  collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: <#identifier#>, forIndexPath: indexPath)
        return view
    }
