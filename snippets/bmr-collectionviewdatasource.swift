---
title: Swift UIKit CollectionViewDataSource methods
completion-scope: ClassImplementation
summary: Methods you need to implement when adopting UICollectionViewDataSource
platform: iphoneos
---
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    }

    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
    }

    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    }
