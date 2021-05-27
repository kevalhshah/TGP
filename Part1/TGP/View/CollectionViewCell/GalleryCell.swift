//
//  GalleryCell.swift
//  TGP
//
//  Created by Keval Shah on 27/05/21.
//

import UIKit

class GalleryCell: UICollectionViewCell {
    
    static let identifier = "cellId"
    
    static func nib() -> UINib {
        return UINib(nibName: "GalleryCell", bundle: nil)
    }

    @IBOutlet weak var galleryIV: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
