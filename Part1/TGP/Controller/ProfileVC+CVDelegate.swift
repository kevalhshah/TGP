//
//  ProfileVC+CVDelegate.swift
//  TGP
//
//  Created by Keval Shah on 27/05/21.
//

import UIKit

extension ProfileVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryImagesName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryCell.identifier, for: indexPath) as! GalleryCell
        cell.galleryIV.image = UIImage(named: galleryImagesName[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let squareSize = ((screenWidth / 2) - 22.5)
        return CGSize(width: squareSize, height: squareSize)
    }
    
}
