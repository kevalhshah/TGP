//
//  ProfileVC.swift
//  TGP
//
//  Created by Keval Shah on 27/05/21.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    
    let screenWidth = UIScreen.main.bounds.width
    
    let galleryImagesName = ["bg1","bg2","bg3","bg4","bg5","bg6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(GalleryCell.nib(), forCellWithReuseIdentifier: GalleryCell.identifier)
        
        collectionViewHeight.constant = (CGFloat(galleryImagesName.count) / 2) * ((screenWidth / 2) - 10)

    }
    
}
